###############################################################################
#
# 	Makefile for the test file of the GBT7714-2005.bst
#
# 	Copyright (C) 2013 Haixing Hu,
#   Department of Computer Science and Technology, Nanjing University.
#
#   Project Home Page: https://github.com/Haixing-Hu/GBT7714-2005-BibTeX-Style
#
###############################################################################

TEST=main

.PHONY: all clean

all: main 

###### generate main file

main: $(TEST).pdf

$(TEST).pdf: $(TEST).tex
	xelatex $(TEST).tex
	bibtex $(TEST)
	xelatex $(TEST).tex
	xelatex $(TEST).tex

###### clean

clean:
	-@rm -f \
		*.nav \
		*.snm \
		*.aux \
		*.bak \
		*.bbl \
		*.blg \
		*.dvi \
		*.glo \
		*.gls \
		*.idx \
		*.ilg \
		*.ind \
		*.ist \
		*.log \
		*.out \
		*.ps \
		*.thm \
		*.toc \
		*.lof \
		*.lot \
		*.loe \
		*.sty \
		*.cfg \
		*.cls \
		*.sty \
		*.pdf
