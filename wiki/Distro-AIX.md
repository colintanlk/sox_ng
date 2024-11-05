# Distro AIX

AIX does not package SoX but has some peculiarities.

## Build dependeencies

On AIX 7.1, most of the build dependencies fail:
```
configure.ac:9: warning: macro 'AM_DISABLE_STATIC' not found in library
configure.ac:36: warning: macro 'AM_PROG_LIBTOOL' not found in library
autom4te: need GNU m4 1.4 or later: /usr/bin/m4
```
even though I have the latest m4 installed in `~/bin` and `~/bin`
is the first in `$PATH`.

### libao

`libao` fails with a compilation error in `src/ao_aix.c`.

The [attached patch](patches/libao-fix-on-AIX.patch) fixes this in libao.

### file

`file` (for `libmagic`)'s `configure` fails saying it can't find `pkg-config`.

With `pkg-config` installed, the build fails saying
```
ld: ERROR: Undefined symbol: .getopt_long
```
which is odd because `file` correctly detects the lack of `getopt`,
has its own built-in `getopt_long` and `src/getopt_long.lo` is built.

### opusfile

Compilation fails saying
```
rc/http.c: In function 'op_http_conn_start_tls':
src/http.c:1944:5: warning: ISO C forbids nested functions [-Wpedantic]
 1944 |     int                ip_len;
      |     ^~~
In file included from /usr/include/netinet/tcp.h:115,
                 from src/http.c:345:
src/http.c:1944:24: error: expected '=', ',', ';', 'asm' or '__attribute__' before '.' token
 1944 |     int                ip_len;
src/http.c:1944:24: error: expected expression before '.' token
src/http.c:1949:5: error: 'ip_ff' undeclared (first use in this function); did you mean 'ip_fv'?
 1949 |     ip_len=0;
```
because `/usr/include/netinet/ip-h` contains
```
#define  ip_len  ip_ff.ip_flen
```
The solution is to edit `src/http.c` to change all `ip_len` to `iplen`.

### libvorbis-1.3.7

`./configure --prefix=$HOME && make` fails saying
```
  CCLD     libvorbisfile.la
  ld: 0711-317 ERROR: Undefined symbol: .rintf
  ld: 0711-317 ERROR: Undefined symbol: .floor
```
but if you `autoreconf -i`, then `./configure && make` works.

## Extraction

* If the target directory `sox_ng-14.4.3` does not already exist, `tar` fails.

## Compilation

* On cfarm111, gcc is in /opt/freeware/bin so make sure that's in your PATH.

## Installation

* On AIX 7.1 `./configure --prefix=$HOME; make install` installs everything
  under `$HOME/configure/` On AIX 7,3 it's OK.
