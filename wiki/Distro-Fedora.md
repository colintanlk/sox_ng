# Distro Fedora

[The source rpm](https://kojipkgs.fedoraproject.org//packages/sox/14.4.2.0/38.fc40/src/sox-14.4.2.0-38.fc40.src.rpm)
contains a modified version of sox-14.4.2 and some patches.

The modifications are:
* add a missing copyright statement for libgsm. 
  This has been be put back in sox_ng, thanks.
* remove lpc10, presumably for its doubtful copyright status.
  In sox_ng the copyright is fixed thanks to legal advice
  from the FSF leading to a new upstream version.

## [Patches in 14.4.2+git20190427-4](https://koji.fedoraproject.org/koji/rpminfo?rpmID=37488786)

```
Legend
NR: Not required
```
| Bug | Issue |
| :-- | :---: |
| [1226675](https://bugzilla.redhat.com/show_bug.cgi?id=1226675) [abrt] sox: startwrite(): sox killed by SIGFPE | #71 |
| [1480678](https://bugzilla.redhat.com/show_bug.cgi?id=1480678) CVE-2017-11332 CVE-2017-11358 CVE-2017-11359 sox: various flaws | #7 #8 #9 |
| [1500553](https://bugzilla.redhat.com/show_bug.cgi?id=1500553) It is a stack-overflow vulnerability in lsx_ms_adpcm_block_expand_i (in adpcm.c:126) | #12 |
| [1500554](https://bugzilla.redhat.com/show_bug.cgi?id=1500554) It is a heap-buffer-overflow in ImaExpandS (in ima_rw.c:126) | #16 |
| [1500570](https://bugzilla.redhat.com/show_bug.cgi?id=1500570) It is a reachable assertion abort in function sox_append_comment (in formats.c:227) that will lead to denial of service attack | #11 |
| [1510923](https://bugzilla.redhat.com/show_bug.cgi?id=1510923) CVE-2017-15642 sox: Use-after-free in lsx_aiffstartread | #13 |
| [1545867](https://bugzilla.redhat.com/show_bug.cgi?id=1545867) CVE-2017-18189 sox: Null pointer dereference in startread function in xa.c | #14 |
| sox-14.4.2-fsf_address_fix | #47 |
| sox-14.4.2-hcom_stopwrite_big_endian_bug_fix | #42 |
| sox-14.4.2-installcheck_fix | #49 |
| sox-14.4.2-lpc10 | NR |
| sox-14.4.2-lsx_symbols | #35 |
| sox-sample_tes-t-c99 | #50 |

## Open bugs

| Bug | Issue |
| :---- | :---- |
| [2094688](https://bugzilla.redhat.com/show_bug.cgi?id=2094688) CVE-2021-40426 sox: heap-based buffer overflow vulnerability exists in the sphere.c start_read() function | #27 |
| [2094700](https://bugzilla.redhat.com/show_bug.cgi?id=2094700) CVE-2022-31650 sox: a floating-point exception in lsx_aiffstartwrite in aiff.c in libsox.a | #28 |
| [2094703](https://bugzilla.redhat.com/show_bug.cgi?id=2094703) CVE-2022-31651 sox: an assertion failure in rate_init in rate.c in libsox.a | #29 |
