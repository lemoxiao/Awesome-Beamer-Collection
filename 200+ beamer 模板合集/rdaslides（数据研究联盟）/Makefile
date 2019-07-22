NAME  = rdaslides
SHELL = bash
PWD   = $(shell pwd)
TEMP := $(shell mktemp -d -t tmp.XXXXXXXXXX)
TDIR  = $(TEMP)/$(NAME)
VERS  = $(shell ltxfileinfo -v $(NAME).dtx)
LOCAL = $(shell kpsewhich --var-value TEXMFLOCAL)
UTREE = $(shell kpsewhich --var-value TEXMFHOME)
all:	$(NAME).pdf $(NAME)-slides.pdf clean
	@exit 0
$(NAME).cls: $(NAME).dtx
	lualatex -synctex=1 -shell-escape -interaction=batchmode $(NAME).dtx >/dev/null
$(NAME).pdf: $(NAME).cls
	latexmk -silent -lualatex -synctex=1 -shell-escape -interaction=batchmode $(NAME).dtx >/dev/null
$(NAME)-slides.pdf: $(NAME).cls
	latexmk -silent -lualatex -synctex=1 -shell-escape -interaction=batchmode -jobname=$(NAME)-slides $(NAME).dtx >/dev/null
clean:
	rm -f $(NAME).{aux,bbl,bcf,blg,doc,fdb_latexmk,fls,glo,gls,hd,idx,ilg,ind,listing,log,nav,out,run.xml,snm,synctex.gz,tcbtemp,toc,vrb}
	rm -f $(NAME)-slides.{aux,bbl,bcf,blg,doc,fdb_latexmk,fls,glo,gls,hd,idx,ilg,ind,ins,listing,log,nav,out,run.xml,snm,synctex.gz,tcbtemp,toc,vrb}
	rm -f rdams{c,d}wg.doc
	rm -rf _minted-*
distclean: clean
	rm -f $(NAME).{pdf,ins} $(NAME)-slides.pdf $(NAME).cls rdacolors.sty beamerthemeRDA.sty rdams{c,d}wg.sty
inst: all
	mkdir -p $(UTREE)/{tex,source,doc}/latex/$(NAME)
	cp $(NAME).dtx $(NAME).ins $(UTREE)/source/latex/$(NAME)
	cp $(NAME).cls rdacolors.sty beamerthemeRDA.sty rdams{c,d}wg.sty rda-bg-normal.jpeg rda-bg-title1.jpeg rda-bg-title2.jpeg $(UTREE)/tex/latex/$(NAME)
	cp $(NAME).pdf $(NAME)-slides.pdf README.md $(UTREE)/doc/latex/$(NAME)
uninst:
	rm -r $(UTREE)/{tex,source,doc}/latex/$(NAME)
	mktexlsr
install: all
	sudo mkdir -p $(LOCAL)/{tex,source,doc}/latex/$(NAME)
	cp $(NAME).dtx $(NAME).ins $(LOCAL)/source/latex/$(NAME)
	cp $(NAME).cls rdacolors.sty beamerthemeRDA.sty rdams{c,d}wg.sty rda-bg-normal.jpeg rda-bg-title1.jpeg rda-bg-title2.jpeg $(LOCAL)/tex/latex/$(NAME)
	cp $(NAME).pdf $(NAME)-slides.pdf README.md $(LOCAL)/doc/latex/$(NAME)
uninstall:
	sudo rm -r $(LOCAL)/{tex,source,doc}/latex/$(NAME)
	mktexlsr
zip: all
	mkdir $(TDIR)
	cp $(NAME).{pdf,dtx} $(NAME)-slides.pdf $(NAME).cls rdacolors.sty beamerthemeRDA.sty rdams{c,d}wg.sty README.md Makefile rda-bg-normal.jpeg rda-bg-title1.jpeg rda-bg-title2.jpeg $(TDIR)
	cd $(TEMP); zip -Drq $(PWD)/$(NAME)-$(VERS).zip $(NAME)
