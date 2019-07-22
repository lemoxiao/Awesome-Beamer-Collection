## The LaTeX source file.
SRC = iisbeamer

## Determine the host the Makefile is running on.
HOST = $(shell hostname)

## Determine the path to the pdflatex binary depending on the current host.
ifeq ($(HOST),muem_mobile)
  ## Path to the pdflatex binary for my cygwin installation on my laptop.
	PDFLATEX_BIN = "/cygdrive/c/Program Files/MiKTeX 2.9/miktex/bin/x64/pdflatex.exe"
else
  ## Otherwise we assume that we are running this Makefile on my work PC.
	PDFLATEX_BIN = pdflatex
endif

## Determine the path to the latex binary depending on the current host.
ifeq ($(HOST),muem_mobile)
  ## Path to the latex binary for my cygwin installation on my laptop.
	LATEX_BIN = "/cygdrive/c/Program Files/MiKTeX 2.9/miktex/bin/x64/latex.exe"
else
  ## Otherwise we assume that we are running this Makefile on my work PC.
	LATEX_BIN = latex
endif

## Determine the path to the BibTeX binary depending on the current host.
ifeq ($(HOST),muem_mobile)
  ## Path to the BibTeX binary for my cygwin installation on my laptop. 
	BIBTEX_BIN = "/cygdrive/c/Program Files/MiKTeX 2.9/miktex/bin/x64/bibtex.exe"
else
  ## Otherwise we assume that we are running this Makefile on my work PC.
	BIBTEX_BIN = bibtex
endif

## Determine the path to the Biber binary depending on the current host.
ifeq ($(HOST),muem_mobile)
  ## Path to the Biber binary for my cygwin installation on my laptop. 
	BIBER_BIN = "/cygdrive/c/Program\ Files/MiKTeX\ 2.9/miktex/bin/biber.exe"
else
  ## Otherwise we assume that we are running this Makefile on my work PC.
	BIBER_BIN = "/usr/pack/texlive-2011-kgf/bin/x86_64-linux/biber"
endif

## Determine the path to the makeindex binary depending on the current host.
ifeq ($(HOST),muem_mobile)
  ## Path to the makeindex binary for my cygwin installation on my laptop.
	MAKEINDEX_BIN = "/cygdrive/c/Program Files/MiKTeX 2.9/miktex/bin/x64/makeindex.exe"
else
  ## Otherwise we assume that we are running this Makefile on my work PC.
	MAKEINDEX_BIN = makeindex
endif


all: argl

argl:
	$(PDFLATEX_BIN) example.tex

build:
	@$(call echo_info, "Building the LaTeX class.")
	$(LATEX_BIN) $(SRC).ins

doc:
	@$(call echo_info, "Building the documentation")
	$(PDFLATEX_BIN) $(SRC).dtx

index:
	@$(call echo_info, "Building the index")
	$(MAKEINDEX_BIN) -s gglo.ist -o $(SRC).gls $(SRC).glo
	$(MAKEINDEX_BIN) -s gind.ist -o $(SRC).ind $(SRC).idx

sample:
	$(PDFLATEX_BIN) iis_sample.tex

clean:
	@$(call echo_info, "Cleaining the directory")
	@rm -rf *.acr *.alg *.bbl *.blg *.glg *.gls *.aux *.glo *.ist
	@rm -rf *.lof *.log *.lot *.toc *.acn *.out *.tex~ *.tex.backup
	@rm -rf *.fdb_latexmk *.fls Makefile~ pso.conv-* auto *.hst *.ver
	@rm -rf *.bcf *.run.xml *.idx *.nav *.snm *.ilg *.ind
	@rm -rf *~


## Some helper functions used for outputting text. Throughout the following
## functions, we make use of 'tput'.
define echo_info
        @echo "**[MAKE]**$1"
endef
