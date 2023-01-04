DESTDIR = /
all:
	@echo Run make install to install init.

install:
	mkdir -p $(DESTDIR)
	cp -f init $(DESTDIR)/init
	mkdir -p $(DESTDIR)/etc
	cp -f etc/rc.conf $(DESTDIR)/etc
	mkdir -p $(DESTDIR)/var
	cp -rf var/services $(DESTDIR)/var
	mkdir -p $(DESTDIR)/lib
	cp -rf lib/init $(DESTDIR)/lib
	mkdir -p $(DESTDIR)/bin
	cp -f bin/service $(DESTDIR)/bin

uninstall:
	rm -rf $(DESTDIR)/etc/init.d
	rm -f $(DESTDIR)/etc/rc.conf
	rm -rf $(DESTDIR)/var/services
	rm -f $(DESTDIR)/init
	rm -rf $(DESTDIR)/lib/init
	rm -f $(DESTDIR)/bin/service
