INSTALL = install

.PHONY: install
install:
	$(INSTALL) -d $(DESTDIR)/usr/share
	rsync -rlpt bundled-mods/ $(DESTDIR)/usr/share/flasher
	$(INSTALL) -d $(DESTDIR)/usr/sbin
	$(INSTALL) -p mod-flasher/{flasher,flash-image} $(DESTDIR)/usr/sbin
	$(INSTALL) -d $(DESTDIR)/etc/init.d
	$(INSTALL) -p mod-flasher/initscript $(DESTDIR)/etc/init.d/S60flashcast-flasher