## Distro CentOS

CentOS carries 14.4.1 with three patches

```
Legend
NR  Not required
```
| Patch | Issue |
| :---- | :---: |
| [sox-14.4.1-CVE-2017-18189[(https://git.centos.org/rpms/sox/blob/c7/f/SOURCES/sox-14.4.1-CVE-2017-18189.patch) | #14 |
| [sox-14.4.1-lpc10](https://git.centos.org/rpms/sox/blob/c7/f/SOURCES/sox-14.4.1-lpc10.patch) | NR |
| [sox-mcompand_clipping](https://git.centos.org/rpms/sox/blob/c7/f/SOURCES/sox-mcompand_clipping.patch) | NR |

I see CentOS removed `lpc10`, presumably due to uncertainty about
its copyright status (originally written by the US Department of Defense).
[A new upstream release](https://github.com/jafingerhut/lpc10),
made with advice from FSF lawyers, has put it under a 3-clause BSD license.

The `mcompand clipping` patch instead has already been applied.
