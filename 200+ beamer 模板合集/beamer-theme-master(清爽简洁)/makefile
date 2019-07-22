file=beamer-demo
build: pdflatex clear
pdflatex:
	pdflatex ${file}.tex
	pdflatex ${file}.tex
latex:
	latex ${file}.tex
	latex ${file}.tex
	dvipdf ${file}.dvi
bibtex:
	latex ${file}.tex
	bibtex ${file}
	latex ${file}.tex
view:
	evince ${file}.pdf &
aspell:
	aspell --encoding="utf-8" -c -t=tex --lang="en_US" ${file}.tex
clear:
	rm -f ${file}.aux ${file}.blg ${file}.bbl ${file}.dvi ${file}.ps ${file}.log ${file}.toc ${file}.out ${file}.nav ${file}.snm ${file}.synctex.gz
