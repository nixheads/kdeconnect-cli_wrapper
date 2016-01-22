OBJDIR=/usr/bin

all: install

install:
	test -d $(OBJDIR) || mkdir -p $(OBJDIR)
	install -o root -g root ./kdecclist $(OBJDIR)/kdecclist
	install -o root -g root ./kdeccpair $(OBJDIR)/kdeccpair
	install -o root -g root ./kdeccunpair $(OBJDIR)/kdeccunpair
	install -o root -g root ./kdeccping $(OBJDIR)/kdeccping

uninstall:
	rm -f $(OBJDIR)/kdecclist
	rm -f $(OBJDIR)/kdeccpair
	rm -f $(OBJDIR)/kdeccunpair
	rm -f $(OBJDIR)/kdeccping
