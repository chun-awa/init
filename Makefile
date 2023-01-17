DESTDIR = /
all:
	@echo Run make install to install init.

install:
	mkdir -p $(DESTDIR)
	cp -rf bin $(DESTDIR)
	cp -rf etc $(DESTDIR)
	cp -rf var $(DESTDIR)
	cp -rf lib $(DESTDIR)
