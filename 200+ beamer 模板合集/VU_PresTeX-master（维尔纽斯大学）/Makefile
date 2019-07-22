TEXFILES := $(wildcard *.tex)

all: presentation.pdf
	

presentation.pdf:  $(TEXFILES)
	pdflatex presentation 
	bibtex presentation 
	pdflatex presentation 
	pdflatex presentation
	rm *.aux *.bbl *.blg *.log *.toc *.out *.nav *.snm


clean:
	rm *.aux *.bbl *.blg *.log *.toc *.out *.nav *.snm presentation.pdf


