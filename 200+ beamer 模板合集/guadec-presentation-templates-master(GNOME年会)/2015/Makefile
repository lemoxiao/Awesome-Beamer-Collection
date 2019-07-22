NULL =

SRC = guadec-example.tex
PANDOC_SRC = presentation.md

OUT = $(SRC:%.tex=%.pdf)
PANDOC_OUT = $(PANDOC_SRC:%.md=%.pdf)

BYPRODUCTS = \
	$(SRC:%.tex=%.aux) \
	$(SRC:%.tex=%.log) \
	$(SRC:%.tex=%.nav) \
	$(SRC:%.tex=%.out) \
	$(SRC:%.tex=%.snm) \
	$(SRC:%.tex=%.toc) \
	$(NULL)

default: pandoc

ctex: tex clean
tex: $(OUT)

pandoc:
	@echo -n "Compiling $(PANDOC_SRC) to $(PANDOC_OUT)... "
	@pandoc $(PANDOC_SRC) -t beamer -s -o $(PANDOC_OUT) --smart \
	-V theme:guadec -V classoption:aspectratio=169 --slide-level 2 --highlight-style kate
	@echo "Done!"

continuous: pandoc
	@echo "The PDF will be updated automatically when you save the $(PANDOC_SRC) document. Press Ctrl+C to abort."
	@while inotifywait -q $(PANDOC_SRC); do sleep 0.1; make --no-print-directory pandoc; done

%.pdf: %.tex
	pdflatex $<

clean:
	rm -Rf $(OUT) $(PANDOC_OUT) $(BYPRODUCTS)

.PHONY: all clean

