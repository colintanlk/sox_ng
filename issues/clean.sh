#! /bin/sh

# Remove auto-generated files in issues/

usage() {
    {
	echo "Usage: sh check.sh [-a] [-f]"
	echo "-a  Also remove downloaded issues"
	echo "-f  ...even if they've been modified locally"
    } 1>&2
}

removeall=false		# Remove the downloaded issues?
force=false		# even if they've been modified locally?
for a
do
    case "$a" in
    -a) removeall=true; shift;;
    -f) force=true; shift;;
    *)  usage; exit 1;;
    esac
done

rm -f *.html *.json	# -f so it doesn't fail if there are none

$removeall && for mdfile in *.md
do
    if [ "*.md" = "$mdfile" ]
    then
	# No matching files (or one called "*.md"!)
	test -f "$mdfile" || continue
    fi

    # Guard against issues whose name ends in ".md"
    test -d "$mdfile" && continue

    # The directory of metadata belonging to this issue
    dirname="$(basename "$mdfile" .md)"

    if $force
    then
	rm -f "$mdfile"
	rm -rf "$dirname"
	continue
    fi

    # Only remove when both .md file and corresponding directory exist
    # to avoid wiping any other .md files and defend against issue titles
    # that end in ".md"
    # .md files that have been modified locally can be protected by chmod 444
    # and new ones are protected by not having a "number" file in their dir.
    # We also check that the .md file hasn't been modified since its directory
    # (the .md file is created by getissues.sh before the directory)
    if [ -f "$mdfile" -a -w "$mdfile" \
	 -a -d "$dirname" -a -f "$dirname"/number \
	 -a ! \( "$mdfile" -nt "$dirname" \) ]
    then
	rm "$mdfile"
	rm -r "$dirname"
    fi
done
