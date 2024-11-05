# Distro macports

`macports` uses `sox-14.4.2` with two patches:
| Patch | Issue |
| :---- | :---: |
| [`patch-curl`](https://github.com/macports/macports-ports/raw/master/audio/sox/files/patch-curl.diff) | #122 |
| [`yosemite-libtool`](https://github.com/macports/macports-ports/raw/master/audio/sox/files/yosemite-libtool.patch) | #142 |

and has 2 open Trac tickets:
| Ticket | Issue |
| :---- | :---: |
| [53257](https://trac.macports.org/ticket/53257): SoundDecompress @1.11_2 cannot decompress myst audio files |  |
| [61488](https://trac.macports.org/ticket/61488): multiple ports: review macOS version checking | #142 |
