VERSION = 1.0

INSTALL = install

.PHONY: install
install:
	$(INSTALL) -d '$(DESTDIR)/usr/share'
	rsync -rlpt bundled-mods/ '$(DESTDIR)/usr/share/flasher'
	$(INSTALL) -d '$(DESTDIR)/usr/sbin'
	$(INSTALL) -p src/flasher '$(DESTDIR)/usr/sbin'
	$(INSTALL) -p src/flash-image '$(DESTDIR)/usr/sbin'
	$(INSTALL) -d '$(DESTDIR)/etc/init.d'
	$(INSTALL) -p src/initscript '$(DESTDIR)/etc/init.d/S60flashcast-flasher'
	echo '$(VERSION)' > '$(DESTDIR)/etc/flasher-version'
