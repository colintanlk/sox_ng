# Architecture

SoX_ng is about building a mechanism for making regular releases of
SoX using exiting work. Its primary target is the maintainers of
`sox` packages in software distributions and incidentally and indirectly
the developera and users of SoX.

## Terminology

* `sox` means [sox.sf.net](http://sox.sf.net)
* SoX means the program and its spirit in any of its incarnations
* `sox_ng` means the hard fork of `sox-14.4.2`
* SoX_ng means the project to make and maintain `sox_ng`

## The kind of software we're working on

As "packaged software", similar to a software tool where the software
is audio data, SoX is a "Mission-Critical System" for which spiral
development and staged or evolutionary delivery are most effective.

## Problem Definition

SoX has not had a release in the nine years since Chris Bagwell's last
release in 2015. The sole maintainer since then has done some good work
resolving bugs but now seems to do more harm than good. Neither he nor
the only other person with admin rights on 'sox.sf.net` will relinquish
control of it, and the 37,000 downloads a week and the Donate button that
pays into the maintainer's personal PayPal account may be an influence
on this position.

The distros that package SoX all have a different slew of patches to fix CVEs
and other bugs; others package a recent snapshot from the git tree which has
more bugs than the last release. See [Testing](Testing).

Development work on SoX has fragmented. There are hundreds of forks on github,
dozens of bug fixes and improvements with patches in the `sox.sf.net`
issue tracker, all ignored. Most of the active and best developers have
gone away to work on other things, to work on their own copies of SoX or
to raise a family.

The objective of SoX_ng is to remedy this situation so that:
- all distros can package the same working, bug-free version of SoX
- developers can work on SoX knowing that their work will not be
  ignored and wasted

A second objective is to clarify and regularize SoX's
[copyright position](Copyright).

## Program Organization

* Facilitate distro maintainers' work by providing regular releases
  with bug fixes and with functional enhancements
* Reassure SoX developers that their work can be included in a release
  within predictable time
* Unify the current plethora of independent development efforts

## Major Classes

It's not clear what this means for `sox_ng`.

## Data Design

* Mailing lists: one for users and one for developers
* Wiki
* Code repository
* Issue tracker

## Business Rules

* A way to make donations
* [Bounties]
* Public [Accounting](Accounting)

## User Interface Design

* Web-based: provided by the hosting platforms
* Command line: provided by `git`
* Mailing lists: use your favorite email client
* A guide to interacting with `sox_ng` is in `README.md`
  in the top level of the source code

## Resource Management

The only finite resource is my time, scheduled in two-monthly batches
for the micro and minor releases. A major release may be considered.

## Security

The user `sox_ng` is registered on various platforms controlled by
the email address `sox_ng@proton.me`. That should become `sox_ng@fastmail.com`

The passwords for the `sox_ng` accounts are currently held by Martin Guy and,
where necessary, the phone number for SMSes and a legal address are those
of Martin Guy.

## Performance and Scalability

Done by the hosting platforms.

## Interoperability

sox_ng's data need to be shared with
- the distros that package SoX
- `sox.sf.net`'s repository and issue tracker
- SoX developers
These are done manually by email and by copy-pasting text and patches.

## Internationalization/Localization

* The web and command line interfaces are internationalized and localized
  by the hosting platform and by upstream command-line tools
* `sox_ng`-specific content is mastered in US English
* Messages from SoX's code are not currently internationalized but should be

## Input/Output errors

It's not clear what this means for `sox_ng`.

## Fault Tolerance

Hosting platform downtime and malfunctions can be guarded against by
- individual developers having clones of the `sox_ng` code and wiki
  repositories and a download of the issues
- the web presences are mirrored on a different hosting platform
  as well as submitted them to `archive.org`
- the mailing lists being archived by subscribing `mail-archive.com` to them

## Error Processing

* Mistakes in writing issues, the wiki and the code's documentation
  are detected by humans and handled either directly by committers
  or by email to the mailing lists to be acted on by committers.
* Mistakes in commits that impact compilability and functionality
  can be detected by by a hosting platform's Continuous Integration service
  using SoX's built-in test suite and the regression test suite.

## Architectural Feasibility

A time-based release schedule means that each release addresses issues
resolved in time for its date.

At present there is a single point of failure, the sole SoX_ng maintainer,
to be addressed by having more than one holder of `sox_ng`'s accounts' keys.

## Overengineering

Each of the data components should have two instances:

* Code repository: mirrored on disroot.org
* Issue tracker: mirrored on disroot.org
* Wiki: mirrored on disroot.org
* Mailing lists: How do you make live backups of mailing lists?

## Buy vs. Build

The web platforms are provided gratis and `sox_ng` cannot afford
to pay anyone to performs its tasks.

## Reuse

For its first releases it reuses existing work:

### Code

* `sox`'s git repository from release 14.4.2

### Issues

* CVE reported against `sox-14.4.2` on `cve.mitre.org`
* bugs and feature requests on `sox.sf.net`'s issue tracker
* issues open against `sox-14.4.2` in distros' issue trackers

### Patches

* patches in the distros that package `sox`
* patches proposed on `sox.sf.net`'s issue tracker
* patches posted to various mailing lists, found by following references
  in the issues' reused sources
* commits and pull requests in the [forks](Forks) of `sox`,
  including commits to `sox.sf.net` since 14.4.2

It would be useful to have automatic notification of new commits
to `sox`'s forks and new or updated issues in distros' trackers.

## Change Strategy

Changes to `sox_ng` can be proposed on the mailing lists
and acted on (or not) by the release manager.
