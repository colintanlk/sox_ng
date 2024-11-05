# Backups

## Manual

It's easy enough to make a backup of the code in the repository:
```
git clone https://codeberg.org/sox_ng/sox_ng
```
and of the wiki:
```
git clone https://codeberg.org/sox_ng/sox_ng.wiki
```
and the issues, with their milestones, labels and attachments can be downloaded using `issues/getissues.sh` but changes to the issues can't uploaded [yet](#80).

## Automatic

`sox_ng`'s repositories on Codeberg are mirrored on [git.disroot.org/sox_ng](https://git.disroot.org/sox_ng)
and constantly updated ("push mirrored") by Codeberg.

Unfortunately, when migrating a `forgejo` repository you lose
all the attachments to the issues, and the issues are not updated
by the "push mirror", only the code and the wiki.

This will be fixed. #80
