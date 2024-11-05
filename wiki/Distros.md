# Distros

About 50 non-derivative software distributions package `sox` either
from 14.4.2 with different selections of patches or
from commit 42b355 with a different array of patches.

We add Debian derivative Ubuntu because it may have different patches
and has a separate, well-nourished issue tracker.

If there is a page of distro-specific notes, the link on the distro name
in the following table will take you to it;
distro-generic notes are after the table.

## The Distros

```
Legend
14.4.2  Last release of sox.sf.net from 2015-02-22
42b355  Tip of the sox.sf.net repo on 2021-05-09
```
| Distro | Pages | Maintainers | Notes |
| :----- | :---- | :---------- | :---- |
| [80x24](Distro-80x24) | [Package](https://80x24.org/sox.git) | Eric Wong <normalperson@yhbt.net> and others | 14.4.2 with many commits, patches and branches |  
| [AIX](Distro-AIX) | - | - | Doesn't package SoX |
| [Alpine Linux](Distro-Alpine) | [Packages](https://pkgs.alpinelinux.org/packages?name=sox)<BR>[Patches](https://git.alpinelinux.org/aports/tree/community/sox) | Natanael Copa | 14.4.2 with 19 patches |
| [ALT Linux](Distro-ALTLinux) | [Package](https://packages.altlinux.org/en/sisyphus/srpms/sox)<BR>[Specfiles](https://packages.altlinux.org/en/sisyphus/srpms/sox/specfiles) | ded (Andrey Kovalev) | 14.4.2 with 26 patches: 19 CVEs & 6 bug fixes from Debian and one build system fix |
| [ArchLinux](Distro-Arch) | [Package](https://archlinux.org/packages/extra/x86_64/sox)<BR>[Patches](https://gitlab.archlinux.org/archlinux/packaging/packages/sox) | David Runge <dvzrv@archlinux.org> | 42b355 with 7 CVE fixes |
| [Artix](Distro-Artix) | [Package](https://packages.artixlinux.org/packages/world/x86_64/sox) | Last commits are by Nathan Owens ndowens@artixlinux.org | 42b355 |
| [buildroot](Distro-buildroot) | [Patches](https://git.busybox.net/buildroot/tree/package/sox) | Last patch is from fontaine.fabrice@gmail.com | sox.sf.net commit 752416 (2021-02-01=42b355^) with 5 build system fixes |
| [CentOS](Distro-CentOS) | [Package](https://git.centos.org/rpms/sox)<BR>[Patches](https://git.centos.org/rpms/sox/blob/c7/f/SOURCES) |  | 14.4.1 with three patches |
| [CRUX](Distro-CRUX) | [Package](https://crux.nu/ports/crux-3.6/contrib/sox) | | 42b355 with one build system fix |
| [cygwin](Distro-cygwin) | [Package](https://cygwin.com/packages/summary/sox-src.html)<BR>[Commits](https://cygwin.com/cgit/cygwin-packages/sox)<BR>[Patches](https://cygwin.com/cgit/cygwin-packages/sox/tree) | ORPHANED | 14.4.2 with patches from fedoraproject |
| [Debian](Distro-Debian) | [Package](http://packages.debian.org/sox)<BR>[Patches](https://sources.debian.org/patches/sox/14.4.2+git20190427-3.5/)<BR>[Bugs](https://bugs.debian.org/cgi-bin/pkgreport.cgi?src=sox)<BR>[Mailing list](https://lists.debian.org/cgi-bin/search?P=sox&B=Gdebian-multimedia) | debian-multimedia@lists.debian.org | 14.4.2 with 27 patches, 18 of which are for CVEs, and one more in sid |
| Exherbo | [Package](https://summer.exherbolinux.org/packages/media-sound/sox/index.html) | | 14.4.2 with no patches |
| [Fedora](Distro-Fedora) | [Package](https://packages.fedoraproject.org/pkgs/sox)<BR>[Patches](https://src.fedoraproject.org/rpms/sox/tree/rawhide)<BR>[Issues](https://bugzilla.redhat.com/buglist.cgi?component=sox) | The last committer is Florian Weimer <fweimer@redhat.com> | 14.4.2 with 13 patches |
| [FreeBSD](Distro-FreeBSD) | [Package](https://www.freshports.org/audio/sox)<BR>[Patches](https://codeberg.org/FreeBSD/freebsd-ports/src/branch/main/audio/sox/files) | dnelson@allantgroup.com | gentoo's distfile of 42b355 with 2 patches: ["Fix man page"](https://cgit.freebsd.org/ports/commit/?id=0613b0fd68faf2d13925745831b046ed306dbbb8) and "src/output.c:flow()" |
| [Gentoo](Distro-Gentoo) | [ebuild](https://gitweb.gentoo.org/repo/gentoo.git/tree/media-sound/sox/sox-14.4.2_p20210509-r2.ebuild) | sound@gentoo.org | 42b355 with two build system fixes |
| GNU Guix | [Package](https://packages.guix.gnu.org/packages/sox/14.4.2/)<BR>[Issues](https://issues.guix.gnu.org/search?query=sox%2014.4.2%20is:open) | | 14.4.2 with no patches |
| Gobolinux | [Recipe](https://github.com/gobolinux/Recipes/blob/master/Sox/14.4.2/Recipe) | Hisham Muhammad <hisham@gobolinux.org> | 14.4.2 with no patches |
| Haiku | [Recipe](https://github.com/haikuports/haikuports/blob/master/media-sound/sox/sox-14.4.2.recipe)<BR>[Patches](https://github.com/haikuports/haikuports/tree/master/media-sound/sox/patches) | aarroyoc  <adrian.arroyocalle@gmail.com> | 14.4.2 with one build system fix |
| Homebrew | [Package](https://formulae.brew.sh/formula/sox)<BR>[Formula](https://github.com/Homebrew/homebrew-core/blob/3f8e8c8f8cf7671ad134464f6eee2f82cb8f22b2/Formula/s/sox.rb) | | 14.4.2 with 2 patches, one build system and one by Eric Wong |
| KaOS | [Package](https://kaosx.us/packages/view.php?name=main/sox-14.4.2-13)<BR>[Patches](https://github.com/KaOSx/main/tree/master/sox) | | 14.4.2 with one patch for ffmpeg0.11 |
| LiGurOS | [Repository](https://gitlab.com/liguros/liguros-repo/-/tree/stable/media-sound/sox)| | sox-14.4.2_p20210509 Gentoo derivative |
| Macports | [Package and Issues](https://ports.macports.org/port/sox/details/)<BR>[Portfile](https://github.com/macports/macports-ports/blob/master/audio/sox/Portfile)<BR>[Patches](https://github.com/macports/macports-ports/tree/master/audio/sox/files) | No maintainer | 14.4.2 with 2 patches |
| Mageia | [Package](http://sophie.zarb.org/rpms/105748d9b69c7cca6fb7015e9d2337fa/files)<BR>[Patches and RPM spec](http://sophie.zarb.org/rpms/105748d9b69c7cca6fb7015e9d2337fa/files) | zezinho | "sox-20200117.tar.xz" snapshot with 7 CVE patches from Debian |
| MSYS2 mingw | [Package and patch](https://github.com/msys2/MINGW-packages/tree/master/mingw-w64-sox) | Wolfgang Stöggl <c72578@yahoo.de> | 14.4.2 with one patch |
| NixOS | [Package](https://search.nixos.org/packages?show=sox) | Marc Weber <marco-oweber@gmx.de> | Based on 42b355 with patch [0001-musl-rewind-pipe-workaround](https://github.com/NixOS/nixpkgs/commit/42e689e5bddb852801bd1fd8acb11ceab758f67c)
| nixpkgs | [Package](https://github.com/NixOS/nixpkgs/tree/release-24.05/pkgs/applications/misc/audio/sox) | | As for NixOS |
| [OpenBSD](Distro-OpenBSD) | [Package](https://www.freshports.org/audio/sox) | dnelson@allantgroup.com | 42b355 with 7 patches. See [this post](https://www.mail-archive.com/ports%40openbsd.org/msg107748.html) |
| [OpenEmbedded](Distro-OpenEmbedded) | [Package & patches](https://layers.openembedded.org/layerindex/recipe/2270)<BR>[Recipe](https://git.openembedded.org/meta-openembedded/tree/meta-multimedia/recipes-multimedia/sox/sox_14.4.2.bb?h=master) | Koen Kooi koen@dominion.thruhere.net | sox-14.4.2 with 3 patches |
| OpenEuler | [Package and patches](https://gitee.com/src-openeuler/sox/tree/openEuler-23.09/) | | sox-14.4.2.0.modified with 11 patches |
| OpenIndiana | [Package](https://github.com/OpenIndiana/oi-userland/tree/7942b0829973c7a732d67ca3e0bb240679fac40e/components/multimedia/sox)<BR>[Patches](https://github.com/OpenIndiana/oi-userland/tree/7942b0829973c7a732d67ca3e0bb240679fac40e/components/multimedia/sox/patches) | | 14.4.2 with 3 patches |
| openmamba | [Package](https://openmamba.org/en/packages/?tag=base&pkg=sox.source) | silvan | 14.4.2 apparently with no patches |
| OpenMandriva | [Package](https://github.com/OpenMandrivaAssociation/sox) | Last commit by berolinux (Bernhard Rosenkraenzer) | 14.4.2 with no patches |
| OpenSUSE | [Package](https://packagehub.suse.com/packages/sox/)<BR>[Patches](https://packagehub.suse.com/packages/sox/14_4_2-bp155_3_3_1) | packagehub@suse.com | 14.4.2 with 16 CVE patches |
| OpenWrt | [Package](https://openwrt.org/packages/pkgdata/sox)<BR>[Git tree](https://github.com/openwrt/packages/tree/master/sound/sox)<BR>[Patches](https://github.com/openwrt/packages/tree/master/sound/sox/patches) | | 14.4.2 with 3 patches |
| OS4DEPOT | [Package](http://os4depot.net/index.php?function=showfile&file=audio/convert/sox.lha) | Submitter: Matthias Muench | 14.2.0 |
| Parabola | [Package](https://www.parabola.nu/packages/?q=sox) | Last Packager: Andreas Baumann <mail@andreasbaumann.cc> | "This package comes from Arch" |
| Pisi Linux | [Package](https://github.com/pisilinux/main/tree/master/multimedia/sound/sox) | admins@pisilinux.org | Git snapshot? Last updated 2020-02-03 |
| pkgsrc | [Package](https://pkgsrc.se/audio/sox)<BR>[Patches](http://cvsweb.netbsd.org/bsdweb.cgi/pkgsrc/audio/sox/patches/) | | Appears to be 14.4.2 with 5 patches and some translations in the spec file |
| PLD LINUX | [Package](https://git.pld-linux.org/?p=packages/sox.git)<BR>[Patches](https://git.pld-linux.org/?p=packages/sox.git;a=tree) | Last commit by Jakub Bogusz <qboosh@pld-linux.org> | 14.4.2 with 3 patches |
| PureOS | [Package](https://software.pureos.net/package/src/pureos/landing/sox) | Maintainer: debian-multimedia@lists.debian.org<BR>Uploaders: Dennis Braun <d_braun@kabelmail.de>, Jaromír Mikeš <mira.mikes@seznam.cz> | sox_14.4.2+git20190427 Debian derivative with Debian's 28 patches |
| Rosa | [Package](https://abf.io/import/sox) | | 14.4.2 with 12 CVE patches from Fedora and 6 bug fixes |
| Scoop | [sox.json](https://github.com/ScoopInstaller/Main/blob/master/bucket/sox.json) | | 14.4.2 |
| Slackware | [Page](https://packages.slackware.com/?r=slackware-current&p=sox-14.4.2-i586-9.txz) | | Couldn't find the source. Seems plain 14.4.2 |
| SliTaz | [Package](https://pkg.slitaz.org/?info=sox) | Pascal Bellard <pascal.bellard​@slitaz.org> | 14.4.2 |
| Solus | [Package](https://github.com/getsolus/packages/tree/main/packages/s/sox/) | Packager: Jakob Gezelius <jakob@knugen.nu> | 14.4.2 with no patches |
| [sox.sf.net](Distro-sox) | [Package](https://sox.sf.net) | mans@mansr.com | 14.4.2 with 184 patches |
| Spack | [Package](https://packages.spack.io/package.html?name=sox) | sox is looking for a maintainer! | 14.4.2 |
| T2 SDE | [Package](http://t2sde.org/packages/sox) | Rene Rebe <rene@t2-project.org> | 14.4.2 with one patch #67 |
| Termux | [Package](https://github.com/termux/termux-packages/tree/858771625/packages/sox) | "@termux" | 14.4.2 with 1 patch for Android |
| Trisquel | [Package](https://packages.trisquel.org/source/aramo-security/sox)<BR>[ChangeLog](https://packages.trisquel.org/changelogs/pool/main/s/sox/sox_14.4.2+git20190427-2/changelog) | It says that the maintainer is Ubuntu Developers | Seems to be a copy of Debian or Ubuntu |
| Ubuntu | [Package](https://packages.ubuntu.com/source/noble/sox)<BR>[ChangeLog](https://changelogs.ubuntu.com/changelogs/pool/universe/s/sox/sox_14.4.2+git20190427-4build4/changelog)<BR>[Bug reports](https://launchpad.net/ubuntu/+source/sox/+bugs) | Ubuntu Developers ubuntu-devel-discuss@lists.ubuntu.com | Debian derivative, maybe with extra patches |
| VoidLinux | [Package](https://github.com/void-linux/void-packages/tree/master/srcpkgs/sox) | Leah Neukirchen <leah@vuxu.org> | 14.4.2 with one patch #67  |

### Sources

* [Software distributions on Repology that package sox](https://repology.org/projects/sox)
* [Software distributions on pkgs.org that package sox](https://pkgs.org/search/?q=sox)

## Notes for package maintainers

### `sox_ng` compared to `sox.sf.net`

#### CVEs and bugs are fixed

`sox_ng-14.4.3` is a hard fork of `sox-14.4.2` including all the
Debian and Fedora patches with more successful fixes for some of the CVEs,
fixes all the unaddressed CVEs and more bug fixes from the distros.

There is [a regression test suite](https://codeberg.org/martinwguy/sox_test)
that runs SoX against a collection of the test files from CVEs and bug reports

For a summary of how `sox-14.4.2`, `sox.sf.net`, Debian and `sox_ng` fare,
see [Testing](Testing).

#### Copyright is now regular

The copyright status of SoX was a mess (see [Copyright](Copyright))
but in `sox_ng` it has been sorted out
thanks to input from the FSF's legals
and to confirmations from dodgy files' original authors.

The package as a whole is GPLv2
because `src/opus.c` is based on `oggdec.c` which is GPLv2-only
but individual source files retain their more permissive,
GPLv2-compatible licences.

#### Regular releases

`sox_ng` has time-based releases.
The first micro release with bug fixes is scheduled for 18 August 2024
and the first minor release with new features for 18 October 2024,
with a six-monthly cycle for each.

#### Micro release (bug fixes) only

If your distro opted for basing its package on the 2021 top of the `sox.sf.net`
git tree (affectionately known as 42b355), your users may lose some features
if you move the the first `sox_ng` micro release.
Other than bug fixes and changes and better input validation,
the only ones I am aware of are:
- `spectrogram`: Add `-n` flag to normalise the brightness of the graph
  according to its highest peak
- `spectrogram`: remove arbitrary height limit of 8193 pixels
- Handle 192k sample rates in RIAA files
- Allow `combine` to merge a single file
- Handling of ID3 tags in more formats
- `WAV` files: allow the number of "valid bits" to be less than the sample size

### Replacing `sox` is optional

`sox_ng` installs as `sox_ng`, `{soxi,play,rec}_ng`, `sox_ng.h`,
`libsox_ng.{a,la,so}`, `sox_ng.pc` and similarly for the manual pages
but if you `./configure --enable-replace` it also makes links
`sox`, `play`, `sox.h` and so on so that other programs find
what they are used to.

According to your distro's norms, you may prefer to enable these links
and make it a supplant the original `sox` (a "conflicting alternative")
or you may prefer to use your distro's "alternatives" mechanism
so that users can choose which to use.
