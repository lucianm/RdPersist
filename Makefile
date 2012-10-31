PACKAGE  = rdpersist
VERSION  = 0.0.1
ARCHIVE  = $(PACKAGE)-$(VERSION)
prefix  ?= $(DESTDIR)/usr/local
TMPDIR   = /tmp
DOCDIR   = $(prefix)/share/doc/$(ARCHIVE)

all:
	@echo Nothing to build

install:
	install -m 755 -o root -g root $(PACKAGE) $(prefix)/bin
	cp --remove-destination --archive $(PACKAGE).conf $(DESTDIR)/etc
	mkdir -p $(DOCDIR)
	cp --recursive --remove-destination --archive AUTHORS HISTORY LICENSE README.md -t $(DOCDIR)

uninstall:
	rm -f $(prefix)/bin/$(PACKAGE)
	rm -fR $(DOCDIR)

dist:
	@-rm -rf $(TMPDIR)/$(ARCHIVE)
	@mkdir $(TMPDIR)/$(ARCHIVE)
	@cp -a * $(TMPDIR)/$(ARCHIVE)
	@tar cjf ../$(ARCHIVE).tar.bz2 -C $(TMPDIR) $(ARCHIVE)
	@-rm -rf $(TMPDIR)/$(ARCHIVE)
	@echo Distribution package created as ../$(ARCHIVE).tar.bz2

.PHONY: install
