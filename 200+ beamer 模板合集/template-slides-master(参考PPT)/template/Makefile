sample.pdf: sample.tex
	# you need to run pdflatex command twice if you're having issues 
	# getting TOC or top progress bar to show up in resulting pdf	
	xelatex sample.tex

view-xpdf: sample.pdf
	xpdf sample.pdf & disown	

view-okular: sample.pdf
	okular sample.pdf & disown	

view-acroread: sample.pdf
	acroread sample.pdf & disown	

view-evince: sample.pdf
	evince sample.pdf & disown	

clean:
	latexmk -c
	rm -rf *run.xml* *.snm* *blx.bib* *.nav*