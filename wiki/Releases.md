# Releases

`sox_ng` has a time-based release cycle using Semantic Versioning.
Each of the versions has a new release every six months.

## Release levels

### Micro

Numbered X.Y.Z+1, micro releases include bug fixes, spelling errors
and very small enhancements to existing features but no new features.
Changes, apart from the bug fixes, are both forward- and backward-compatible.

The last micro release candidate, 14.4.3-rc2, was made on 2024-08-25 and may become 14.4.3 on 2024-09-01.

### Minor

Numbered X.Y+1.0, minor releases add new features and functionality
in a backward-compatible manner but "not too many at once".

The first minor release, 14.5.0, is scheduled for 2024-10-18.

### Major

Major releases, numbered X+1.0.0 include changes that are
not backward-compatible and major new feature sets.

A major release is not yet planned.

## For each release

- VERSION=14.4.3-rc1
- git checkout main
- git status			# Should be nothing to do
- Change `configure.ac`'s `AC_INIT` line to the new version
- Maybe change `src/sox_ng.h`'s `SOX_LIB_VERSION_CODE` to the new version
- Update ChangeLog from the git logs
- Edit releases.json
- Edit README.md to change the next release date
- cd issues; sh clean.sh -a; ls *.md; cd ..	# There should be none left
- cd wiki; git pull; sh makehtml.sh; cd ..
- git commit -m "Release $VERSION" -a
- git tag sox_ng-$VERSION
- git push --tags
- make dist
- firefox https://codeberg.org/sox_ng/sox_ng/releases
- Poke "New release"
  - Tag name: sox_ng-$VERSION
  - Release title: Release $VERSION
  - Describe this release: First micro release
  - Click here to upload and select sox_ng/sox_ng-$VERSION.tar.gz
  - Use the title and content of release as tag message: No
  - Mark as prerelease: Maybe
  - Hide automatically generated archives: Yes
- Announce the release (candidate) on sox-ng@groups.io
- Wait a week; if no problems are evident, it becomes the release;
  otherwise issue another release candidate for another week's testing,
  and so on
- When a release candidate is OK for a week, it becomes the release
- Announce the final release on [http://freshcode.club](freshcode.club)
  - May happen automatically now.
- Maybe announce the final release on sox-devel@lists.sourceforge.net

## Further reading

### Release management

- Karl Fogel's book [*Producing OSS*](http://producingoss.com) chapter 3: *Release management* and chapter 6: *Release Strategy*
- Michael Michlmayr's PhD theses [*Open Source Software Projects: Exploring the Impact of Release Management*](http://www.cyrius.com/publications/michlmayr-phd.pdf) on the merits of time-based released over "when it's ready" releases.
- [*Producing OSS*](http://producingoss.com) chapter 5: *Time Based Releases*

### Semantic versioning

- [*Producing OSS*'s section on semantic versioning](https://producingoss.com/en/development-cycle.html#semantic-versioning)
- The [*Semantic Versioning Specification*](http://semver.org)
