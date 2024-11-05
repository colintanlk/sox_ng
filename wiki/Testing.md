# Testing

## `testall.sh`

SoX has a script `testall.sh` which uses `src/tests.sh` which uses
`src/sox_sample_test` to do many lossless format conversions and
check that their results are as expected.

`make distcheck` runs this but the `make check` target does nothing.

## `test/`

There is a directory `test/` in `sox-14.4.2` whose contents seem not to work
or be used anywhere. It has been deleted from `sox_ng` and is replaced by...

## The regression test suite

A regression test suite has been developed for `sox_ng` and other SoXen:
```
git clone https://codeberg.org/martinwguy/sox_test
cd sox_test
sh check.sh
```
will check your `sox` command against all the CVEs and some other bugs.

To test a different binary, you can go, for example,
```
sox=$HOME/sox-14.4.2/src/sox sh check.sh
```

It also has `checkall.sh` which does the same against multiple versions of SoX.
You will need to edit it to tell it which executables to test.

Its output for `sox-14.4.2`, Debian trixie,
`sox.sf.net`'s commit `42b355` and its tip on 2024-08-01 
and `sox_ng` without and with the Address Sanitizer is:
```
Legend
OK   The test succeeded and sox succeeded or failed as it should
SUCC sox "succeeded" (exit 0) when it should have failed (exit 2)
ABRT sox Aborted (core dumped)
SEGV sox got a Segmentation fault (core dumped)
FPE  sox got a Floating Point Exception (core dumped)
LOOP sox ran for more than one minute of CPU.
EXEC Can't execute sox. Missing shared libraries also provoke this.
ASAN The Address Sanitizer reported problems other than memory leaks:
     buffer overflows, freeing free memory, running out of VM.
     It means exit(1), which `sox` only gives for command-line errors.
     With the Address Sanitizer you get `ASAN` instead of `SEGV` and `FPE`.
```
On 32-bit Debian x86:
```
BUG              14.4.2 trixie 42b355 sox-code sox_ng sox_ngA
BUG-298          ABRT   OK     OK     OK       OK     OK
BUG-334          SEGV   SEGV   OK     OK       OK     OK
CVE-2004-0557    OK     OK     OK     OK       OK     OK
CVE-2017-11332   FPE    OK     OK     OK       OK     OK
CVE-2017-11333   OK     OK     OK     OK       OK     OK
CVE-2017-11358   SUCC   OK     OK     OK       OK     OK
CVE-2017-11359   FPE    OK     OK     OK       OK     OK
CVE-2017-15370   SEGV   SUCC   OK     OK       OK     OK
CVE-2017-15371   ABRT   OK     OK     OK       OK     OK
CVE-2017-15372   SEGV   SUCC   OK     OK       OK     OK
CVE-2017-15642   OK     OK     OK     OK       OK     OK
CVE-2017-18189   SEGV   OK     OK     OK       OK     OK
CVE-2019-1010004 SEGV   OK     OK     OK       OK     OK
CVE-2019-13590   SEGV   OK     OK     OK       OK     OK
CVE-2019-8354    ABRT   ABRT   ABRT   OK       OK     OK
CVE-2019-8355    SEGV   OK     OK     OK       OK     OK
CVE-2019-8356    SEGV   SUCC   SUCC   SUCC     OK     OK
CVE-2019-8357    SEGV   SEGV   OK     OK       OK     ASAN
CVE-2021-23159   ABRT   OK     ABRT   ABRT     OK     OK
CVE-2021-23172   SEGV   OK     SEGV   SEGV     OK     OK
CVE-2021-23210   OK     OK     FPE    FPE      OK     OK
CVE-2021-33844   OK     OK     FPE    FPE      OK     OK
CVE-2021-3643    OK     OK     FPE    FPE      OK     OK
CVE-2021-40426   OK     OK     OK     OK       OK     OK
CVE-2022-31650   FPE    OK     FPE    FPE      OK     OK
CVE-2022-31651   ABRT   OK     ABRT   ABRT     OK     OK
CVE-2023-26590   OK     OK     OK     OK       OK     OK
CVE-2023-32627   OK     OK     FPE    FPE      OK     OK
CVE-2023-34318   SEGV   OK     SEGV   SEGV     OK     OK
CVE-2023-34432   ABRT   OK     OK     OK       OK     OK
Fedora-1226675   OK     OK     OK     OK       OK     OK
spectrogram_-x   OK     OK     SEGV   OK       OK     OK
wavpack-errors   SEGV   OK     OK     OK       OK     OK
```
On 64-bit Debian x86:
```
BUG              14.4.2 trixie 42b355 sox-code sox_ng sox_ngA
CVE-2017-15642   OK     OK     OK     OK       OK     OK
CVE-2017-18189   SEGV   OK     OK     OK       OK     OK
CVE-2019-1010004 SEGV   OK     OK     OK       OK     OK
CVE-2019-13590   OK     OK     OK     OK       OK     OK
CVE-2019-8354    ABRT   ABRT   ABRT   OK       OK     OK
CVE-2019-8355    OK     OK     OK     OK       OK     OK
CVE-2019-8356    SEGV   SUCC   SUCC   SUCC     OK     OK
CVE-2019-8357    OK     OK     OK     OK       OK     ASAN
CVE-2021-23159   ABRT   OK     ABRT   ABRT     OK     OK
CVE-2021-23172   SEGV   OK     SEGV   SEGV     OK     OK
CVE-2021-23210   OK     OK     FPE    FPE      OK     OK
CVE-2021-33844   OK     OK     FPE    FPE      OK     OK
CVE-2021-3643    OK     OK     FPE    FPE      OK     OK
CVE-2021-40426   OK     OK     OK     OK       OK     OK
CVE-2022-31650   FPE    OK     FPE    FPE      OK     OK
CVE-2022-31651   ABRT   OK     ABRT   ABRT     OK     OK
CVE-2023-26590   OK     OK     OK     OK       OK     OK
CVE-2023-32627   OK     OK     FPE    FPE      OK     OK
CVE-2023-34318   SEGV   OK     SEGV   SEGV     OK     OK
CVE-2023-34432   ABRT   OK     OK     OK       OK     OK
Fedora-1226675   OK     OK     OK     OK       OK     OK
spectrogram_-x   SEGV   SEGV   SEGV   OK       OK     OK
wavpack-errors   SEGV   OK     OK     OK       OK     OK
```

it's interesting that, for four tests, `sox-14.4.2` succeeds
but `sox.sf.net` gets a floating point exception.

The `ASAN` error for `sox_ng` against `CVE-2019-8357` is caused by the
Address Sanitizer limiting processes to 4096MB of VM; with the
plain build, `malloc()` fails and SoX recovers from this
but the Address Sanitizer detects the overallocation and halts.

## `lpc10-1.5/misc`

`lpc10-1.5` has `misc/` containing what appear to be a correctness test
and a probe for a GCC bug. It's not in `lpc10-1.6`. Issue #111.
