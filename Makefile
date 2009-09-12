PREFIX?=$(DESTDIR)/usr/local

install:
	install -d $(PREFIX)/bin
	install -d $(PREFIX)/share/snip/docs
	install -d $(PREFIX)/share/snip/examples
	cp -rp examples $(PREFIX)/share/snip/
	install -m755 snip   $(PREFIX)/bin/snip
	install -m644 README $(PREFIX)/share/snip/docs


uninstall:
	rm -rf $(PREFIX)/bin/snip
	rm -rf $(PREFIX)/share/snip
