# Portability

## Unix

`sox_ng` compiles and `testall.sh` and
[the regression test suite](Testing#regression-tests) succeed
on Debian, Fedora, FreeBSD and 32 of the 34
[GCC Compile Farm hosts](https://portal.cfarm.net/machines/list),
that is to say:

### Architectures

#### Succeeded on

* aarch-64le
* arm-64le
* chrp-32be
* mips-64be
* ppc-64be
* ppc-64le
* riscv-64le
* sun4v-64be
* x86-32le
* x86-64le

#### Did not succeed on

* arm-64le (cfarm240):  `configure: machine 'aarch64c-unknown' not recognized`

### Operating Systems

#### Succeeded on

* [AIX](Distro-AIX) 7.4
* AlmaLinux 8.1 (cfarm185 aarch-64le)
  * though build dependencies libid3tag and libmad fail: `configure: error: cannot guess build type; you must specify one`
* AlmaLinux 9.4 (cfarm120 ppc-64le)
* [AlpineLinux](Distro-Alpine)
* [Archlinux](Distro-Arch)
* [CentOS](Distro-CentOS) 7.9 and 8
* [Debian](Distro-Debian) stretch buster bullseye bookworm and trixie
* [FreeBSD](Distro-FreeBSD) 14.1 amd64
* MacOS X 12.6
* [OpenBSD 7.5](Distro-OpenBSD)
  * though you must `configure --without-sunaudio`
* OpenSUSE Leap 15.0 and 15.5
* Solaris 11.4
* Ubuntu jammy

#### Did not succeed on

* [AIX](Distro-AIX) 7.1: Too many compilation problems

## MS/DOS

Is the same as "Windows". Haven't tried yet.
See issue #65.

## Mac OS X

Works the Unix way and also using `homebrew`.
See issue #122.

## Haiku

Needs a Haiku system to test on.

## Minix

Needs a Minix system to test on.
