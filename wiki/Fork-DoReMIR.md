# Fork DoReMIR

[DoReMIR Music Research](http://www.doremir.com)'s github fork is
taken from `cbagwell/sox` and is 20 commits ahead
and with three branches.

## Links
* [github.com/doremir/sox](https://github.com/doremir/sox)

## Commits

In the order they were applied:

| Commit | Description | Issue |
| :----- | :---------- | :---: |
| [`d05aba5`](https://github.com/doremir/sox/commit/d05aba5) | Don't call sox_write from output effect if input buffer is empty. This avoids issues with the vorbis encoder. | #148 |
| [`4e2c3ec`](https://github.com/doremir/sox/commit/4e2c3ec) | Support for mp3 decoding using MPG123 instead of MAD | #150 |
| [`1338dfa`](https://github.com/doremir/sox/commit/1338dfa) | Support for auto-detecting MP3 |  |
| [`ed00cb8`](https://github.com/doremir/sox/commit/ed00cb8) | Bug fix in mp3 format handler |  |
| [`39db06c`](https://github.com/doremir/sox/commit/39db06c) | Added README.md with build instructions for Windows. |  |
| [`28c63e5`](https://github.com/doremir/sox/commit/28c63e5) | Update README.md with build instructions. |  |
| [`8f3da1b`](https://github.com/doremir/sox/commit/8f3da1b) | Clear errors before reading so that it is possible to read from a file being written to by another process |  |
| [`4d753b0`](https://github.com/doremir/sox/commit/4d753b0) | Use C style comments |  |
| [`6d8b03f`](https://github.com/doremir/sox/commit/6d8b03f) | Export lsx_clearerr and lsx_flush |  |
| [`ceb951f`](https://github.com/doremir/sox/commit/ceb951f) | Use _wfopen on Windows to support unicode filenames |  |
| [`9742ddf`](https://github.com/doremir/sox/commit/9742ddf) | When reading partial samples from a file being written, save the partial samples for next read so that no data is lost |  |
| [`9a4f57f`](https://github.com/doremir/sox/commit/9a4f57f) | Bug fix for the partial sample feature |  |
| [`8e133d2`](https://github.com/doremir/sox/commit/8e133d2) | Update README.md with build instructions for Windows. |  |
| [`f785535`](https://github.com/doremir/sox/commit/f785535) | Make sox_delete_effect usable and added sox_add_and_delete_effect for convenience |  |
| [`0c21d46`](https://github.com/doremir/sox/commit/0c21d46) | sox_add_effect error handling fix |  |
| [`cddfb07`](https://github.com/doremir/sox/commit/cddfb07) | Fixed some warnings and comments in mp3 handler |  |
| [`d4556e7`](https://github.com/doremir/sox/commit/d4556e7) | Support unicode when writing id3 tags |  |
| [`252b73f`](https://github.com/doremir/sox/commit/252b73f) | CMake support for ID3 writing with LAME |  |
| [`fc94e0f`](https://github.com/doremir/sox/commit/fc94e0f) | Use sox_uint64_t in sox_mp3seek to avoid compiler warning |  |
| [`0af5834`](https://github.com/doremir/sox/commit/0af5834) | README.md has moved to the modus repository |  |

## Branches

### bug-fix
| Commit | Description | Issue |
| :----- | :---------- | :---: |
| [`d05aba5`](https://github.com/doremir/sox/commit/d05aba5) | Don't call sox_write from output effect if input buffer is empty | - |

Included in the master branch

### dot

Branch copied from cbagwell/sox, 184 commits behind cbagwell's master.

### mpg123-support

| Commit | Description | Issue |
| :----- | :---------- | :---: |
| [`1ab438c`](https://github.com/doremir/sox/commit/1ab438c) | Support for mp3 decoding using MPG123 instead of MAD |  |
| [`c42f61c`](https://github.com/doremir/sox/commit/c42f61c) | Support for auto-detecting MP3 |  |
| [`a8e86e2`](https://github.com/doremir/sox/commit/a8e86e2) | Bug fix in mp3 format handler |  |

Presumably the same as the three commits of the same names in the master branch.
