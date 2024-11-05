# Compiler warnings

## Debian bookworm 64 bit

hcom.c: In function 'stopwrite':
hcom.c:471:64: warning: comparison of integer expressions of different signedness: 'size_t' {aka 'long unsigned int'} and 'int32_t' {aka 'int'} [-Wsign-compare]
  471 |   } else if (lsx_writebuf(ft, compressed_data, compressed_len) != compressed_len) {
## Debian trixie package sox
```
libsox.c:69:9: warning: macro "__DATE__" might prevent reproducible builds [-Wdate-time]
   69 |         __DATE__ " " __TIME__,
      |         ^~~~~~~~
libsox.c:69:22: warning: macro "__TIME__" might prevent reproducible builds [-Wdate-time]
   69 |         __DATE__ " " __TIME__,
      |                      ^~~~~~~~
``` 

## cfarm110 ppc64 bigendian
```
wav.c: In function 'sndfile_workaround':
wav.c:423:78: warning: ISO C90 does not support 'long long' [-Wlong-long]
         lsx_debug("File had libsndfile bug, working around tell=%lld", (long long int)lsx_tell(ft));
                                                                              ^
wav.c:423:9: warning: ISO C90 does not support the 'll' gnu_printf length modifier [-Wformat=]
         lsx_debug("File had libsndfile bug, working around tell=%lld", (long long int)lsx_tell(ft));
         ^
```

## cfarm215 Solaris 11.4
```
mp3.c: In function 'stopwrite':
mp3.c:1281:12: warning: unused variable 'num_samples' [-Wunused-variable]
mp3.c:170:26: warning: 'lame_library_names' defined but not used [-Wunused-const-variable=]

In file included from vorbis.c:27:
 include/vorbis/vorbisfile.h: warning: 'OV_CALLBACKS_STREAMONLY_NOCLOSE' defined but not used [-Wunused-variable]
 include/vorbis/vorbisfile.h:88:21: warning: 'OV_CALLBACKS_STREAMONLY' defined but not used [-Wunused-variable]
include/vorbis/vorbisfile.h:81:21: warning: 'OV_CALLBACKS_NOCLOSE' defined but not used [-Wunused-variable]
include/vorbis/vorbisfile.h:74:21: warning: 'OV_CALLBACKS_DEFAULT' defined but not used [-Wunused-variable]
```

## Debian x86_32
```
sf.c: In function ‘write_header’:
sf.c:125:87: warning: ‘?:’ using integer constants in boolean context [-Wint-in-bool-context]
sf.c:131:57: warning: ‘?:’ using integer constants in boolean context [-Wint-in-bool-context]

soundtool.c: In function ‘write_header’:
soundtool.c:54:74: warning: ‘?:’ using integer constants in boolean context [-Wint-in-bool-context]
soundtool.c:63:89: warning: ‘?:’ using integer constants in boolean context [-Wint-in-bool-context]

wve.c: In function ‘write_header’:
wve.c:45:74: warning: ‘?:’ using integer constants in boolean context [-Wint-in-bool-context]
wve.c:47:74: warning: ‘?:’ using integer constants in boolean context [-Wint-in-bool-context]

gsrt.c: In function ‘start_write’:
gsrt.c:142:71: warning: ‘?:’ using integer constants in boolean context [-Wint-in-bool-context]
```
