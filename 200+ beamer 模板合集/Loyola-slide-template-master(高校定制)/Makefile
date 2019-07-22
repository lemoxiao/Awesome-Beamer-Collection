all: presentation

clean:
	rm -f *~
	rm -f `ls presentation.* | grep -v .tex | grep -v .pdf`

presentation:
	rm -f *~
	rm -f `ls presentation.* | grep -v .tex`
	pdflatex presentation.tex
	pdflatex presentation.tex
	pdflatex presentation.tex
	evince presentation.pdf &
