SRC := slideshow.rst
TARGET := ${SRC:.rst=.pdf}
TEX := ${SRC:.rst=.tex} 

.PHONY: all clean
all:: ${TARGET}

${TARGET}:
	python2 utils/rst2beamer.py $(SRC) > slideshow_raw.tex
	grep -Ev 'inputenc|fixltx2e|cmap|fontenc|ifthen|babel|courier|helvet|mathptmx' slideshow_raw.tex > ${TEX}
	rm slideshow_raw.tex
	xelatex --shell-escape --interaction=nonstopmode ${TEX}

clean:
	-rm -f *.aux *.log *.pdf *.vrb *.toc *.snm *.out *.nav

texclean:
	-rm *.tex
