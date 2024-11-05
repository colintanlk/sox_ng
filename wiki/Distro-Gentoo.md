# Distro Gentoo

Gentoo's `sox` is based on a snapshot from the spx.sf.net git tree,
which fails on 4 CVEs that sox-14.4.2 doesn't. See [Testing](Testing).

The two patches in Gentoo are:

| Bug | Description | Issue |
| :-- | :---------- | :---: |
| [386027](http://bugs.gentoo.org/386027) | sox-14.3.2[debug] Does not respect CFLAGS | #66 |
| [712630](http://bugs.gentoo.org/712630) | "formats.c: error: #error FIX NEEDED HERE" on musl | #67 |

## Open bugs

| Bug | Description | Issue |
| :-- | :---------- | :---: |
| [838382](http://bugs.gentoo.org/838382) | multiple vulnerabilities CVE-2021-23159, CVE-2021-23172, CVE-2021-23210, CVE-2021-33844, CVE-2021-3643, CVE-2021-40426, CVE-2022-31650, CVE-2022-31651, CVE-2023-26590, CVE-2023-32627, CVE-2023-34318, CVE-2023-34432 |  #24, #25, #23, #26, #22, #27, #28, #29, #30, #31, #32, #33 |
| [914867](http://bugs.gentoo.org/914867) | [clang] ld.lld: error: version script assignment of global to symbol lsx_lpc10_create_decoder_state failed | #69 |
