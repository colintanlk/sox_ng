# Hosting

## Requirements

`SoX_ng` needs
* A code repository
* A wiki
* An issue tracker
* Mailing lists
* A secure email address to register the above and for private emails

## Hosting platforms

### sourceforge.net

* the historic home of `sox`
* a closed-source platform that locks projects in
* where all the links on the web point to as its home page
* where users and automatic systems will look for new releases
* if we can admin the existing project, it's less stressful for distros and will update the 37,000 people per week who download from there
* becoming admin on the existing project appears not to be possible 
* unreliable: you couldn't post to its mailing lists for a week this year
* old and crappy. Very 90's.

### github.com

The home of most forks of `sox`
* commercial
* owned by Microsoft
* Last year, they stopped me being able to push to my repositories
  by insisting on 2FA that I was unable to set up

### gitlab.com

The most popular alternative for those running away from github
* interface looks like github
* seems ok but is still `.com`
* Technically nothing special

### codeberg.org

* managed by a large and stable non-profit association
* org is also active in development of the platform
* support line is fast and helpful
* runs on a modern open-source platform, [`forgejo`](forgejo.org)
* you can switch between two users without logging out and logging in again
* always up (so far...)
* does not provide mailing lists

### disroot.org

* is managed by a non-profit organization "based on principles of
  freedom, privacy, federation and decentralization: No tracking,
  no ads, no profiling, no data mining"
* provides many free software services, not just repository hosting
* has another free `forgejo` instance
* provides free email accounts but not mailing lists
* You have to create separate accounts for different services;
  I've created a `forgejo` account for `sox_ng` but have been unable 
  to create a generic account for other services because the
  password-strength JavaScript refuses everything as "too weak"
* The support line does not answer

### sourcehut.org

* appears to be managed by a few individuals
* support line is helpful
* runs 100% open source software: for the repositories `forgeperf` which is lightweight and does not use javascript
* software is alpha and "Payment will be required later: From the beta onwards, unpaid accounts will be limited to read-only access to their own projects" and "We can terminate service at any time"
* the "ticket tracker" seems odd but "you can send a plaintext email with your bug report, whether or not you have an account"
* has had massive and complete outage due to a DDoS attack, and had their servers stolen while relocating a datacenter, so either someone hates them particularly or they are less capable than the others
* they provide mailing lists but you cannot subcribe to them without
  registering on sourcehut via its wevb interface.

### savannah.nongnu.org

* managed by the Free Software Foundation
* high-visibility and a form of "grandad's approval" of your project
* support line seems irritable but is strong on legal issues and has pro-bono lawyers
* gives better accessibility for the blind or partially sighted according to Eric Wong
* project registration is laborious and slow but this may result in improved quality. After over a month I have still been unable to test-drive it
* old and a bit crappy
* provides mailing lists
* only hosts GPLv3-or-later projects; [`SoX` is GPLv2-only](Copyright)

### launchpad.net

* Managed by Canonical "Trusted open source for enterprises" but Ubuntu-centric
* `sox_ng` needed to be private until its first release but to have a private repository you need a "commercial subscription" which expires within a few weeks unless you pay or are "approved" by Canonical.
* usernames cannot contain an underscore

### protonmail.com

* Free accounts but it begs for money a lot
* Support's replies are prompt
* If you open a personal account and a project account you have to
  pay two subscriptions to use IMAP. Already asked and refused.
* It claims to use end-to-end encryption but *they* send you the code to run
  so it would be easy to put something in it to send them your every thought
  as you type it if the NSA asked for it in their nice and irresistible ways
* You probably only get E2E encryption between two Proton accounts
  or two Tuta accounts

### tutamail.com

* Another JS E2E platform with the same fundamental flaw as Protonmail

### fastmail.com

* Seems OK, needs PGP for private emails.
* Normal people can't set PGP up, but then normal people probably
  don't need to talk with the secure email address
* The receipt they sent for sox_ng's subscription was headed as being for
  `Keen.tea6429@fastmail.com` so I have no proof that I paid them.
* Their help line sends you a boilerplate reply the next day
  telling you to chat with their AI bot.

### Self-hosting

A VPS with `forgejo`, a web server and an email server
* More secure
* More work

## Conclusion

* Host the repository, wiki and issue tracker on Codeberg
  with Disroot as a mirrored hot backup
* The private mail address is sox_ng@fastmail.com
* Make a PGP key pair for it and publish the public key
* I naïvely started with `sox_ng@proton.me` and that is still
  the controlling email address for the web resources

* The mailing list was @freelists.org but they refuse to let anyone else archive it (already asked; refused) so it is now
  * email [`sox-ng@groups.io`](mailto:sox-ng@groups.io) to post,
  * email [`sox-ng+subscribe@groups.io`](mailto:sox-ng+subscribe@groups.io)
    to subscribe and
  * web [`groups.io/g/sox-ng`](https://groups.io/g/sox-ng) for both
* Have `mail-archive.com` back it up
