# Distro Debian
Of the tested versions of SoX, Debian's is the one that defends best
against CVEs, though the strategy of importing `sox.sf.net`'s patches
for them is less than 100% successful.

## Test results for CVE patches in 14.4.2+git20190427-3.5 and -4
```
Legend
SUCC  Exits zero when it should fail
ABRT  Aborts
ASAN  Works but the Address Sanitizer reports problems
ALOOP Loops forever when compiled with the Address Sanitizer.
      If you give it more than a minute of CPU time, the address sanitizer kills it
      saying it has tried to allocate more than `0xc0000000` bytes of VM so the 10x
      ASAN slowdown is due to SoX beating `malloc()` to death.
1     Exits 1 without ASAN, "succeeds" with.
-     We don't have a test for this bug
```

Results for Debian bookwork/trixie i386
| Patch | Issue | bookworm32 | trixie32 | bookworm64 | trixie64 |
| :---- | :---- | :---: | :---: | :---: | :---: |
| [0001-fix-build](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0001-fix-build.patch) | #35 | - | - | - | - |
| [0002-spelling](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0002-spelling.patch) | #36 | - | - | - | - |
| [0003-CVE-2017-15371](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0003-CVE-2017-15371.patch) | #11 | ASAN | ASAN | ASAN | ASAN |
| [0004-CVE-2017-11358](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0004-CVE-2017-11358.patch) | #8 | OK | OK | OK | OK |
| [0005-CVE-2017-15370](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0005-CVE-2017-15370.patch) | #16 | SUCC | SUCC | SUCC | SUCC |
| [0006-CVE-2017-11332](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0006-CVE-2017-11332.patch) | #7 | OK | OK | OK | OK |
| [0007-CVE-2017-11359](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0007-CVE-2017-11359.patch) | #9 | OK | OK | OK | OK |
| [0008-wavpack_check_errors](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0008-wavpack_check_errors.patch) | #37 | OK | OK | 1 | 1 |
| [0009-lintian-man-sox](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0009-lintian-man-sox.patch) |#38 | - | - | - | - |
| [0010-xa-validate-channel-count](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0010-xa-validate-channel-count.patch) =CVE-2017-18189 | #14 | OK | OK | OK | OK |
| [0011-CVE-2017-15372](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0011-CVE-2017-15372.patch) | #12 | OK | OK | OK | OK |
| [0012-CVE-2017-15642](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0012-CVE-2017-15642.patch) | #13 | OK | OK | OK | OK |
| [0013-Handle-vorbis_analysis_headerout-errors](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0013-Handle-vorbis_analysis_headerout-errors.patch) =CVE-2017-11333 | #39 | ASAN | ASAN | ASAN | ASAN |
| [0014-CVE-2019-8354](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0014-CVE-2019-8354.patch) | #15 | ABRT | ABRT | ABRT | ABRT |
| [0015-CVE-2019-8355](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0015-CVE-2019-8355.patch) | #17 | OK | OK | OK | OK |
| [0016-CVE-2019-8356](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0016-CVE-2019-8356.patch) | #18 | SUCC<BR>ALOOP | SUCC<BR>ALOOP | SUCC<BR>ALOOP | SUCC<BR>ALOOP |
| [0017-CVE-2019-8357](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0017-CVE-2019-8357.patch) | #19 | SEGV | SEGV | LOOP | LOOP |
| [0018-CVE-2019-13590](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0018-CVE-2019-13590.patch) | #20 | OK | OK | OK | OK |
| [0019-fix-resource-leak-comments](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0019-fix-resource-leak-comments.patch) | #40 | - | - | - | - |
| [0020-fix-resource-leak-hcom](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0020-fix-resource-leak-hcom.patch) | #41| - | - | - | - |
| [0021-fix-hcom-big-endian](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0021-fix-hcom-big-endian.patch) | #42 | - | - | - | - |
| [0022-CVE-2021-3643](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0022-CVE-2021-3643.patch) | #22 | ASAN | ASAN | ASAN | ASAN |
| [0023-CVE-2021-23159](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0023-CVE-2021-23159.patch) | #24 | OK | OK | OK | OK |
| [0024-CVE-2021-33844](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0024-CVE-2021-33844.patch) | #26 | OK | OK | OK | OK |
| [0025-CVE-2021-40426](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0025-CVE-2021-40426.patch) | #27 | OK | OK | OK | OK |
| [0026-CVE-2022-31650](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0026-CVE-2022-31650.patch) | #28 | OK | OK | OK | OK |
| [0027-CVE-2022-31651](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0027-CVE-2022-31651.patch) | #29 | OK | OK | OK | OK |
| [0028-CVE-2023-32627-Filter-null-sampling-rate-in-VOC-code](https://sources.debian.org/patches/sox/14.4.2+git20190427-4/0028-CVE-2023-32627-Filter-null-sampling-rate-in-VOC-code.patch) | #31 | SUCC | SUCC | SUCC | SUCC |

For test results for other unaddressed CVEs and results for `sox.sf.net` 
and `sox_ng` see [Testing](Testing).

## TODO
### Add format OPUS
If `libopusfile-dev` is installed, `dpkg-buildpackage` says
```
dh_missing: warning: usr/lib/i386-linux-gnu/sox/libsox_fmt_opus.so exists in debian/tmp but is not installed to anywhere 
```
* ![Patch for Debian source package 14.4.2+git20190427-4](patches/Debian-Add-opus-format.patch)
### Add format sndio
If libsndio-dev is installed, `dpkg-buildpackage` says
```
dh_missing: warning: usr/lib/i386-linux-gnu/sox/libsox_fmt_sndio.so exists in debian/tmp but is not installed to anywhere
```
* ![Patch for Debian source package 14.4.2+git20190427-4](patches/Debian-Add-sndio-format.patch)
