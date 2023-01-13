DESTDIR = /
all:
	@echo Run make install to install init.

install:
	mkdir -p $(DESTDIR)
	cp -rf usr $(DESTDIR)
	cp -rf etc $(DESTDIR)
	cp -rf var $(DESTDIR)
	cp -rf lib $(DESTDIR)
