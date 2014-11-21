void-updates
============

Script intended to be run daily via cron for finding upstream updates
to [void-packages][]. This is just a wrapper around `./xbps-src update-check`.

Requirements
------------

* xbps
* git

Usage
-----

1. Create a dedicated user for `void-updates` which is member of the
   `xbuilder` group.
2. Run a command like the following from the dedicated user's crontab
   daily:

    void-updates -p 20 \
      -r git://github.com/voidlinux/void-packages.git \
      -s /var/cache/void-packages \
      -o /srv/http/void-updates

[void-packages]: https://github.com/voidlinux/void-packages
