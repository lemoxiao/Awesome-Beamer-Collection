set TEXINPUTS=.\themefau

pdflatex -shell-escape poster.tex
biber poster
pdflatex -shell-escape poster.tex

del *.aux *.bbl *.bcf *.blg *.nav *.out *.snm *.log *.toc *.vrb
exit
