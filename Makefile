DESTDIR = /
all:
	@echo Run make install to install init.

install:
	mkdir -p $(DESTDIR)
	mkdir -p $(DESTDIR)/etc
	cp -f etc/rc.conf $(DESTDIR)/etc
	mkdir -p $(DESTDIR)/var
	cp -rf var/services $(DESTDIR)/var
	mkdir -p $(DESTDIR)/lib
	cp -rf lib/init $(DESTDIR)/lib

uninstall:
	rm -rf $(DESTDIR)/etc/init.d
	rm -f $(DESTDIR)/etc/rc.conf
	rm -rf $(DESTDIR)/var/services
	rm -rf $(DESTDIR)/lib/init
