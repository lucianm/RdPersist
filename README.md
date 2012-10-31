RdPersist
==============

RamDisk Persist


Introduction
------------

RamDisk Persist, or in short, rdpersist is just a simple bash scripts which
takes care of mounting a tmpfs "ramdisk", and populating it from a
*.tar.lzo archive, or storing the contents of the tmpfs in this archive and
unmounting it when the ramdisk is no longer needed.

Did a say just one? Well, you can configure as many as you want, in
[/etc/rdpersist.conf](https://github.com/lucianm/RdPersist/raw/master/rdpersist.conf)
by extending the hopefully self-explanatory variables.

Note: the tmpfs mount paths should NOT appear in your /etc/fstab !!!

Download
--------

https://github.com/lucianm/RdPersist/downloads


Gentoo ebuilds:
-----------------------------------------------------

You may add [this layman overlay](https://github.com/lucianm/gen2ovl-googoo2).


Installation
------------

Just use the provided Makefile (install, uninstall), for which you can alter the
environment vars DESTDIR and prefix before calling a Makefile target if you wish.


History
-------

Please consult the [HISTORY](https://github.com/lucianm/RdPersist/raw/master/HISTORY)
file.

&copy; 2012 Lucian Muresan
