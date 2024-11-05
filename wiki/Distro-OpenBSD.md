# Distro OpenBSD

`OpenBSD` bases its SoX on `sox.sf.net` commit `42b355` with 7 patches

## Patches

| Patch | Issue |
| :---- | :---: |
| `Update to latest commit (20210509) This fixes following CVEs:` | - |
| `CVE-2019-13590` |  |
| `CVE-2019-8357` |  |
| `CVE-2019-8356` |  |
| `CVE-2019-8355` |  |
| `CVE-2019-8354` |  |
| `CVE-2017-18189` |  |
| `CVE-2017-15642` |  |
| `CVE-2017-15372` |  |
| `CVE-2017-15371` |  |
| `CVE-2017-15370` |  |
| `CVE-2017-11359` |  |
| `CVE-2017-11358` |  |
| `CVE-2017-11332` |  |
| `fix man page` |  |
| `opus: bump consumers after update to 1.4` | - |
| `Update WWW to use HTTPS for sourceforge.net projects` |  |
| `pulseaudio: Update to 16.1` | - |
| `Move man to share/man` | - |
| `libid3tag: Bump PORTREVISION of dependent ports for shlib change` | - |

In the post [backport CVE fixes audio/sox](https://www.mail-archive.com/ports%40openbsd.org/msg107748.html):

| Patch | Issue |
| :---- | :---: |
| `mirror git checkout as a release tarball` | - |
| `bump library minor to 4.1 because of addition of symbols` |  |
| `remove iconv from WANTLIB and LIB_DEPENDS as reported by make port-lib-depends-check` |  |
| `rename CONFIGURE_ARGS` |  |
| `compile extras target during do-test` |  |
| `remove upstreamed patches` | - |

And `sox_ng` already has a fix for:

| Patch | Issue |
| :---- | :---: |
| `sndio: handle 24-bit samples properly on OpenBSD` | #143 |

## Build dependencies

### libao

`libao` fails top compile:
```
ao_sun.c:159:2: error: use of undeclared identifier 'audio_info_t'
```
and you can't `configure --without-sunaudio`

### opus

On cfarm220 (OpenBSD 7.5)
you have to remove the first four lines of `Makefile.am",
run `automake` and `configure --disable-dependency-tracking`

It then dies saying
```
make: don't know how to make -msse4.1
```

### opusfile

Fails because `libopus` is not installed:

## Configuration

`./configure --without-sunaudio` (see below) fails to find `libpng`
although it is in `/usr/local` and `pkg-config --cflags libpng` says
```
-I/usr/local/include/libpng16
```

## Compilation

Compilation on cfarm220 (OpenBSD 7.5 amd64) fails:
```
sox_ng.c: error: use of undeclared identifier 'audio_info_t'

sox_ng.c: error: use of undeclared identifier 'audio_info'
      audio_info.play.gain = (vol2 * AUDIO_MAX_GAIN + 50) / 100;

sox_ng.c:1326:37: error: use of undeclared identifier 'AUDIO_SETINFO'
      if (vol1 != vol2 && ioctl(fd, AUDIO_SETINFO, &audio_info) < 0)
```
but succeeds if you `./configure --without-sunaudio`. Issue #121.

`make` emits a lot of warnings like:
```
warning: incompatible function pointer types initializing 'sox_format_handler_seek' (aka 'int (*)(struct sox_format_t *, unsigned long)') with an expression of type 'int (sox_format_t *, uint64_t)' (aka 'int (struct sox_format_t *, unsigned long long)') [-Wincompatible-function-pointer-types]
```

## Testing

Only the `spectrogram_-x` test fails because the `spectrogram` effect
is not included due to `configure` not finding `libpng`.