## Disclaimer

I'm not a Gentoo developer; this repo is an attempt in making my life easier
with my projects and modified ebuilds.

All advices and PR welcomed.

## Install

For example, with this kind of file in `/etc/portage/repos.conf`:

```
[lqp1]
location = /var/db/repos/lqp1
sync-type = git
sync-uri = git://github.com/lqp1/gentoo-overlay.git
auto-sync = yes
```

## Quick helpful commands

```
# to update this overlay only
$ sudo emaint sync -r lqp1

# to update a manifest
$ repoman manifest

```
