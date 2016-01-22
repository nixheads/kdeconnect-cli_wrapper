OBJDIR=/usr/bin/kdeccw

all: install

install:
	test -d $(OBJDIR) || mkdir -p $(OBJDIR)
	install -o root -g root ./kdecclist $(OBJDIR)/kdecclist
	install -o root -g root ./kdeccpair $(OBJDIR)/kdeccpair
	install -o root -g root ./kdeccunpair $(OBJDIR)/kdeccunpair
	install -o root -g root ./kdeccping $(OBJDIR)/kdeccping

uninstall:
	test -d $(OBJDIR) || rm -rf $(OBJDIR)
