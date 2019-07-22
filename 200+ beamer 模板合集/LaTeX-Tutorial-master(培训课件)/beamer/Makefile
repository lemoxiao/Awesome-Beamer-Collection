TEXFILES := $(wildcard *.tex)

all: presentation.pdf handout.pdf


handout: handout.pdf

presentation: presentation.pdf

presentation.pdf:
	pdflatex --jobname=presentation --draftmode --shell-escape --interaction=nonstopmode presentation.tex > /dev/null
	pdflatex --jobname=presentation --draftmode --shell-escape --interaction=nonstopmode presentation.tex > /dev/null
	pdflatex --jobname=presentation --shell-escape --interaction=nonstopmode presentation.tex > /dev/null
	@echo "*** Compiled presentation.tex to presentation.pdf in normal mode.***"
	rm *.aux *.log *.toc *.out *.nav *.snm *.vrb

handout.pdf:
	pdflatex --jobname=handout --draftmode --shell-escape --interaction=nonstopmode "\def\ishandout{1} \input{presentation.tex}" > /dev/null
	pdflatex --jobname=handout --draftmode --shell-escape --interaction=nonstopmode "\def\ishandout{1} \input{presentation.tex}" > /dev/null
	pdflatex --jobname=handout --shell-escape --interaction=nonstopmode "\def\ishandout{1} \input{presentation.tex}" > /dev/null
	@echo "*** Compiled presentation.tex to handout.pdf in handout mode.***"
	rm *.aux *.log *.toc *.out *.nav *.snm *.vrb

clean:
	rm *.aux *.log *.toc *.out *.nav *.snm *.vrb presentation.pdf handout.pdf