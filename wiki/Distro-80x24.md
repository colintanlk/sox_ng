# Distro 80x24

[`80x24.org`'s SoX](https://80x24.org/sox.git/) is based on 5 commits
after 14.4.2 with 27 commits and 17 branches.

It is by far the most active and well-fed development of SoX
and one of the few maintained by more than one person.
Hats off!

## Commits

| Commit | Issue |
| :----- | :---: |
| [Fixes for issues found during 14.4.2 release](https://80x24.org/sox.git/d41836d/s/) | #99 |
| [Read for more development](https://80x24.org/sox.git/cfc3ccc/s/) | #98 |
| [Merge most Debian changes into master](https://80x24.org/sox.git/e9189be/s/) | #96 |
| [chmod'ing unneeded executable bit](https://80x24.org/sox.git/19bdf7e/s/) | #97 |
| [Remove hepler script](https://80x24.org/sox.git/7e74b25/s/) | #96 |
| [Use posix_fadvise to increase readahead](https://80x24.org/sox.git/1c47376/s/) | #100 |
| [Use non-blocking stdin for interactive mode](https://80x24.org/sox.git/62a370a/s/) | #101 |
| [Add average power spectrum for stat -freq -a](https://80x24.org/sox.git/a324a96/s/) | #102 |
| [hcom: fix double free on writing zero-length file](https://80x24.org/sox.git/cd1d109/s/) | #103 |
| [Add SOX_ENCODING_DSD](https://80x24.org/sox.git/725ece0/s/) | #44 |
| [Add DSF file support](https://80x24.org/sox.git/eda010a/s/) | #44 |
| [Add support for reading DSDIFF files](https://80x24.org/sox.git/c03a859/s/) | #44 |
| [Add macros for increasing data alignment](https://80x24.org/sox.git/e2c146d/s/)<br>*Only used in one place in one file of the dop/dsf code. Inline it.* | #44 |
| [Add a sigma-delta modulator for DSD encoding](https://80x24.org/sox.git/3abe8af/s/) | #44 |
| [Add DSD over PCM (dop) effect](https://80x24.org/sox.git/807d49a/s/) | #44 |
| [Speed up "\|program" inputs on Linux 2.6.35+](https://80x24.org/sox.git/3a859be/s/) | #105 |
| [dsf, dsdiff: fix 32-bit build](https://80x24.org/sox.git/3896ff0/s/) | #44 |
| [Make id3 parsing available to all format handlers](https://80x24.org/sox.git/58b5ad7/s/) | #104 |
| [dsf: parse id3 tag if present](https://80x24.org/sox.git/12fb271/s/) | #44 |
| [dop: fix handling of non-multiple of 16 sample count](https://80x24.org/sox.git/0638fb3/s/) | #44 |
| [pad: add ability to align output to a multiple of a length](https://80x24.org/sox.git/f40c5c0/s/) | #106 |
| [pad: fix alignment to non-power-of-two number of samples](https://80x24.org/sox.git/92f14ab/s/) | #107 |
| [msvc: fix build with Visual Studio 2015](https://80x24.org/sox.git/83b8435/s/) | #108 |

## Branches

| Branch | Description | Issue |
| :----- | :---------- | :---: |
| [`for-mans_20200731`](https://80x24.org/sox.git/f5f7a3f32ac2d03fde04ac7433514666dd4e0700/s/) | Add average power spectrum for stat -freq -a |  |
| [`pu`](https://80x24.org/sox.git/c9a48c055398f171128573bbeab4e4de4c761058/s/) | xa: validate channel count |  |
| [`pu-20171107`](https://80x24.org/sox.git/61d92d7e2675eaa6351c8bf283828c87350fb532/s/) | adpcm: fix stack overflow (CVE-2017-15372) |  |
| [`pu-20171106`](https://80x24.org/sox.git/063add6a04e08e4af98e494bb9ecbd4d570f74c5/s/) |  adpcm: fix stack overflow (CVE-2017-15372)  |  |
| [`js/sndio`](https://80x24.org/sox.git/ea4f3fb3c6de93e10786fbfc1cb1bdf9006bbcdb/s/) | Handle 24-bit samples properly on OpenBSD  |  |
| [`kc/pdf`](https://80x24.org/sox.git/b448ffc111be3d507769b51914c74d99948012b9/s/) | Fix Bug #261: absurd docs bug - PDF is doubled |  |
| [`ew/dyn-default-fix`](https://80x24.org/sox.git/b4097a995ca152f3059faa1dd05f684ac0217737/s/) | Fix build with --with-dyn-default |  |
| [`ew/spectrogram-segv`](https://80x24.org/sox.git/b2562ba1db1a96ae4a04f92365b9ce97279650dd/s/) | Fix segfault when requested size exceeds length |  |
| [`mg/spectrogram`](https://80x24.org/sox.git/9a34cffbf006d1110581c7e160826f3f1089a136/s/) | Add FFTW3 support | #109 |
| [`ew/align`](https://80x24.org/sox.git/9301021b244befeb7e5a1ce4aaeabf84b4d9c6e6/s/) | Always support aligned heap allocation | #110 |
