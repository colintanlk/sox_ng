# Distro ALTLinux
ALT Linux is based on 14.4.2 with 26 patches from Debian

| Patch | Issue |
| :---- | :---: |
| sox-14.4.2-fix-build |  |
| sox-14.4.2-debian-CVE-2017-15371 | #11 |
| sox-14.4.2-debian-CVE-2019-8355 | #17 |
| sox-14.4.2-debian-CVE-2021-33844 | #26 |
| sox-14.4.2-debian-CVE-2017-15370 | #16 |
| sox-14.4.2-debian-CVE-2019-8356 | #18 |
| sox-14.4.2-debian-CVE-2021-3643 | #22 |
| sox-14.4.2-debian-CVE-2017-11332 | #39 |
| sox-14.4.2-debian-CVE-2019-8357 | #19 |
| sox-14.4.2-debian-CVE-2021-40426 | #27 |
| sox-14.4.2-debian-CVE-2017-11359 | #9 |
| sox-14.4.2-debian-CVE-2023-32627-filter-null-sampling-rate-in-VOC-code | #31 |
| sox-14.4.2-debian-CVE-2022-31650 | #28 |
| sox-14.4.2-debian-CVE-2017-15372 | #12 |
| sox-14.4.2-debian-CVE-2017-11358 | #8 |
| sox-14.4.2-debian-CVE-2022-31651 | #29 |
| sox-14.4.2-debian-CVE-2017-15642 | #13 |
| sox-14.4.2-debian-CVE-2019-13590 | #20 |
| sox-14.4.2-debian-CVE-2019-8354 | #15 |
| sox-14.4.2-debian-CVE-2021-23159 | #24 |
| sox-14.4.2-debian-wavpack-check-errors | #37 |
| sox-14.4.2-debian-xa-validate-channel-count | #14 |
| sox-14.4.2-debian-handle-vorbis-analysis-headerout-errors | #39 |
| sox-14.4.2-debian-fix-hcom-big-endian | #42 |
| sox-14.4.2-debian-fix-resource-leak-comments | #40 |
| sox-14.4.2-debian-fix-resource-leak-hcom | #41 |

I'm not sure what the `fix-build` patch
```
-libsox_la_LDFLAGS = @APP_LDFLAGS@ -version-info @SHLIB_VERSION@ \
-  -export-symbols-regex '^(sox_.*|lsx_(check_read_params|(close|open)_dllibrary|(debug(_more|_most)?|fail|report|warn)_impl|eof|fail_errno|filelength|find_(enum_(text|value)|file_extension)|getopt(_init)?|lpc10_(create_(de|en)coder_state|(de|en)code)|raw(read|write)|read(_b_buf|buf|chars)|realloc|rewind|seeki|sigfigs3p?|strcasecmp|tell|unreadb|write(b|_b_buf|buf|s)))$$'
+libsox_la_LDFLAGS = @APP_LDFLAGS@ -version-info @SHLIB_VERSION@
```
does. I am guessing that removing the `export-symbols-regex` makes it
export everything. In any case, extending the `export-symbols-regex`
in different ways is a common patch in other distros, and `sox_ng` unites them
by adding all the extra symbols in these and other patches
(and one more, `lsx_strncasecmp`) so it "should just work".
