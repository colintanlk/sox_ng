# Distro buildroot

buildroot carries a recent commit from sox.sf.net with
[5 patches](https://git.busybox.net/buildroot/tree/package/sox):
```
Legend
NR  Not required as these undo "fixes" to sox.sf.net's build system since 14.4.2
?   I don't know if you need this, as it's a fix to sox.sf.net's "fixed" build system
```
| Patch | Issue |
| :---- | :---: |
| [0001-Make-SoX-support-uclibc-based-toolchains](https://git.busybox.net/buildroot/tree/package/sox/0001-Make-SoX-support-uclibc-based-toolchains.patch) | #76 |
| [0002-configure.ac-put-back-disable-stack-protector](https://git.busybox.net/buildroot/tree/package/sox/0002-configure.ac-put-back-disable-stack-protector.patch) | NR |
| [0003-configure.ac-fix-static-linking-with-id3tag](https://git.busybox.net/buildroot/tree/package/sox/0003-configure.ac-fix-static-linking-with-id3tag.patch) | NR |
| [0004-configure.ac-fix-static-linking-with-magic](https://git.busybox.net/buildroot/tree/package/sox/0004-configure.ac-fix-static-linking-with-magic.patch) | ? |
| [0005-configure.ac-fix-static-linking-with-sndfile](https://git.busybox.net/buildroot/tree/package/sox/0005-configure.ac-fix-static-linking-with-sndfile.patch) | ? |

