DESTDIR = /
all:
	@echo Run make install to install init.

install:
	mkdir -p $(DESTDIR)
	cp -f init $(DESTDIR)/init
	mkdir -p $(DESTDIR)/etc/init.d
	cp -rf etc/init.d $(DESTDIR)/etc
	cp -f etc/rc.conf $(DESTDIR)/etc
	mkdir -p $(DESTDIR)/var/services
	cp -rf var/services $(DESTDIR)/var

uninstall:
	rm -rf $(DESTDIR)/etc/init.d
	rm -f $(DESTDIR)/etc/rc.conf
	rm -rf $(DESTDIR)/var/services
	rm -f $(DESTDIR)/init
