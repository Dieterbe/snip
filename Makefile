install:
	install -d $(DESTDIR)/bin
	install -d $(DESTDIR)/share/snip/docs
	install -d $(DESTDIR)/share/snip/examples
	cp -rp examples $(DESTDIR)/share/snip/
	install -m755 snip   $(DESTDIR)/bin/snip
	install -m644 README $(DESTDIR)/share/snip/docs

uninstall:
	rm -rf $(DESTDIR)/bin/snip
	rm -rf $(DESTDIR)/share/snip
