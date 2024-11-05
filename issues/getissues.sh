#! /bin/sh

# Fetch issues from a forgejo instance.
#
# For an issue with title "CVE-2017-18189", the markdown for its description
# goes into the file issues/CVE-2017-18189.md
# We also create directory issues/CVE-2017-18189/ with files:
# - number: those things that start from 1 and go up monotonically.
# - id: a number unique among all issues on the forgejo instance
# - state: containing "open" or "closed"
# - milestone: (optional) the milestone name, if any
# - labels: (optional) the labels, if any, one per line
#
# By default it only fetches open issues. With -c it also fetches closed issues.
#
# It can be run from the top directory or in the issues/ directory.
#
# Documentation for the codeberg issues API is at
# https://codeberg.org/api/swagger#/issue
#
#	Martin Guy <martinwguy@gmail.com>, July-August 2024.
usage() {
  {
    echo "Usage: sh gettissues.sh [-c] [-s] [-u username]"
    echo "-c	   Fetch closed issues as well as open ones"
    echo "-s       Save a local copy of the JSON replies"
    echo "-u user  Which user to access codeberg.org as"
  } 1>&2
}

# Make sure jq is present
echo '' | jq > /dev/null || {
    {
	echo "getissues.sh needs jq"
	echo "Debian: apt-get install jq; Fedora: yum install jq"
	echo "or you should be able to install the latest version with"
	echo "    git clone https://github.com/jqlang/jq"
	echo "    cd jq"
	echo "    git submodule update --init"
	echo "    autoreconf -i && ./configure --with-oniguruma=builtin"
	echo "    make && sudo make install"
	echo "if that doesn't work, try"
	echo "    make clean; make LDFLAGS=-all-static && make install"
    } 1>&2
    exit 1
}

# Process command line arguments
state=open	# Which state of issues to fetch
save=false	# Whether to save the JSOM replies locally
username=
for a
do
    case "$1" in
    -c) state=all; shift;;
    -s) save=true; shift;;
    -u) if [ $# -lt 2 ]
	then echo "-u what?" 1>&2; exit 1
	else username="$2"; shift 2
	fi;;
    -u*) username="$(echo "$1" | sed 's/-u//')"; shift;;
    -*) usage; exit 1;;
    *) break;
    esac
done

if [ $# -ne 0 ]
then
    usage
    exit 1
fi

if [ -n "$username" ]
then
    echo "getissues.sh: username/password authentication is broken. Trying without..."
    false && {
    stty -echo
    printf "Password: "
    read password
    printf "\n"
    stty echo
    }
fi

site=codeberg.org
user=sox_ng
repo=sox_ng
# martinwguy's issues-read-only token
token=0c465f25b4eefc87be686cd89ae6043329c286c2
api="https://${site}/api/v1"

# dash's built-in "echo" always interprets backslash sequences
# so replace it with the more portable "printf"
echo() {
    printf '%s\n' "$*"
}

# Let them run it in the "issues" directory or from the top-level directory
if [ -d issues ]
then
    cd issues
fi
# Make sure they are in an "issues" directory
if [ "$(basename "$(pwd)")" != issues ]
then
    mkdir issues
    cd issues
fi

# Remove any previously produced output
for a in *.md
do
    # Guard against issues whose title ends in .md
    test -d "$a" && continue

    # Guard against there being no .md files
    # though they may have created an issue called "*" (!)
    test "$a" = "*.md" && [ ! -f "*.md" ] && continue

    test -f "$a" && rm "$a"
    # If getissues was interrupted, it may have created an .md file
    # but not its corresponding directory so check first.
    dirname="$(echo "$a" | sed 's/\.md$//')"
    test -d "$dirname" && rm -r "$dirname"
done

errs=$(mktemp)

# Fetch a URL and output the result to stdout.
# Usage: curlget [-r] URL
# -r  ("raw") Output exactly the reply: don't eliminate CRs
#             and don't ensure it is newline-terminated
curlget() {
    # Process arguments
    raw=false
    for a
    do
	case "$a" in
	-r) raw=true; shift;;
	-*) echo "$0 internal error: curlget called with $a" 1>&2
	    exit 1;;
	*)  break;;
	esac
    done

    url="$1"

    curl="curl --fail --silent -X GET"
    # I can't figure out how to handle arguments including a space in $curl
    # and that makes it impossible to authentication with an access token
    # or with username/password (the password might contain a space) without
    # doubly-nested ifs. That would be:
    #   curl -u "$username:$password" or
    #   curl -H "authorization: token $token"
    # For reading it's not a problem as the repo is now public.
    # For writing it will be a problem.
    if $raw
    then
	$curl -H "accept: application/json" "$url" 2> $errs
    else
	result="$($curl -H "accept: application/json" "$url" 2> $errs)"
    fi
    status=$?
    test $status != 0 && {
	echo "Failed to fetch $url"
	cat $errs
    } 1>&2
    rm $errs
    test $status != 0 && exit $status

    # If not in raw mode, eliminate CR from CRLF
    # and ensure it is newline-terminated.
    # If we are in raw mode, we've already output the result.
    $raw || echo "$(echo "$result" | tr -d '\r')"
}

settings="$(curlget "$api/settings/api")"
if [ -z "$settings" ] 	# if curl failed
then
    exit 1
fi

# The API can only return a maximum of 50 items per request so
# fetch each page until it returns [].
limit="$(echo "$settings" | jq -r '.max_response_items')"
page=0
issues=""
until [ "$issues" = "[]" ]
do
    page=$(($page + 1))
    # Get a list of the issues
    issues="$(curlget "$api/repos/$user/$repo/issues?state=$state&limit=$limit&page=$page")"
    test -z "$issues" && issues="[]"	# if curl failed stop
    if [ "$issues" = "[]" ]; then continue; fi

    # Keep a local formatted copy for inspection?
    $save && echo "$issues" | jq . > issues$page.json

    echo "$issues" | jq -r '.[].number' | while read -r number
    do
        # The list of issues doesn't include the attachments (.assets) but
	# we can get that by fetching an individual issue by its issue number.
	issue="$(curlget "$api/repos/$user/$repo/issues/$number")"
	test -z "$issue" && break	# if curl failed

	# Keep a local formatted copy for inspection?
	$save && echo "$issue" | jq . > issue$number.json

	title="$(echo "$issue" | jq -r ".title")"

	# Replace / with \ for the local filename.
	# Windows and MSDOS on FAT32 also ban : \ ". Tough.
	ftitle="$(echo "$title" | sed 's|/|\\|g')"

	# Check for duplicate titles
	if [ -f "$ftitle".md ]
	then
	    echo "Ignoring another issue with the same title: $ftitle" 1>&2
	    continue
	fi
	    # Some issue bodies have all \n and others have all \r\n. Go figure.
	echo "$issue" | jq -r ".body" | \
	    sed 's/\r\n/\n/g' > "$ftitle".md

	# Save interesting metadata: labels, milestone and id (remote bug number)
	mkdir "$ftitle"
	(
	    cd "$ftitle"

	    # Items that are always present
	    echo "$number" > number
	    id="$(echo "$issue" | jq -r .id)"; echo "$id" > id
	    state="$(echo "$issue" | jq -r .state)"; echo "$state" > state
	    # Items that may be present
	    milestone="$(echo "$issue" | jq -r .milestone.title)"
	    test -n "$milestone" -a null != "$milestone" && \
		echo "$milestone" > milestone
	    labels="$(echo "$issue" | jq -r ".labels|.[].name")"
	    test -n "$labels" && echo "$labels" > labels

	    assets="$(echo "$issue" | jq '.assets')"  # json
	    nassets="$(echo "$assets" | jq -r length)"
	    for i in $(seq 0 $(($nassets - 1))); do
		name="$(echo "$assets" | jq -r ".[$i].name")"
		url="$(echo "$assets" | jq -r ".[$i].browser_download_url")"
		case "$name" in
		*.patch) curlget "$url" > "$name";;
		*)       curlget -r "$url" > "$name";;
		esac
	    done
	)
    done
done
