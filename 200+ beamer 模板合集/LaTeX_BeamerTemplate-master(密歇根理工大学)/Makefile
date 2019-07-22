#
# Makefile
# Makefile to systematically compile the john_slides.tex to produce 
# john_slides_[presentation|distribution].pdf (and clean up temporary files).
#
# In order to create the PDF files, just type
#
# make 
#
# This and other associated files are distributed in the hope that it will 
# be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of 
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#
# For questions, comments and/or concerns about this template, please contact
#
# Dr. Gowtham, PhD 
# Director of Research Computing, IT
# Adj. Asst. Professor, Physics/ECE
# Michigan Technological University
# Email: g@mtu.edu

# File suffixes
.SUFFIXES: .tex .dvi .eps .ps .pdf .jpg .gif

# Basic variables
SHELL    = /bin/sh
CP       = cp
RM       = rm
MV       = mv
AWK      = awk
SED      = sed
ZIP      = zip
MKDIR    = mkdir
RSYNC    = rsync
SLEEP    = sleep
LATEX    = latex
PDFLATEX = pdflatex
BIBTEX   = bibtex
DVIPS    = dvips
DVIPDF   = dvipdf
PS2PDF   = ps2pdf
MAINFILE = $(shell ls *_*.tex | awk -F '.' '{ print $$1}')
DATETIME = $(shell date +"%Y%m%d_%H%M%S")

# Class file
CLASSFILE = MichiganTech.cls

# List of temporary file types
TMPFILES = acr \
           alg \
           aux \
           bbl \
           bcf \
           blg \
           blx \
           brf \
           dvi \
           fdb_latexmk \
           fls \
           glg \
           glo \
           gls \
           idx \
           ilg \
           ind \
           ist \
           loa \
           lof \
           log \
           lol \
           lot \
           maf \
           mtc \
           mtc0 \
           nav \
           nlo \
           out \
           pdfsync  \
           ps \
           pyg \
           run.xml \
           sagetex.py \
           sagetex.sage \
           sagetex.scmd \
           snm \
           sout \
           sympy \
           synctex.gz \
           tdo \
           thm \
           toc \
           vrb \
           xdy

# Default target
all:
	make clean
	make presentation
	make distribution
	make clean

# Presentation materail
presentation:
	@echo
	@echo "  Slides for presentation (with animation/transition)"
	@echo
	$(PDFLATEX) --shell-escape $(MAINFILE).tex
	$(PDFLATEX) --shell-escape $(MAINFILE).tex
	$(MV) $(MAINFILE).pdf $(MAINFILE)_presentation.pdf
	@echo
	@echo

# Distribution materail
distribution:
	@echo
	@echo "  Slides for distribution (without animation/transition)"
	@echo
	$(MV) $(CLASSFILE) $(CLASSFILE)_presentation
	$(SED) 's/aspectratio=43/handout,aspectratio=43/g' $(CLASSFILE)_presentation > $(CLASSFILE)
	$(PDFLATEX) --shell-escape $(MAINFILE).tex
	$(PDFLATEX) --shell-escape $(MAINFILE).tex
	$(MV) $(MAINFILE).pdf $(MAINFILE)_distribution.pdf
	$(MV) $(CLASSFILE)_presentation $(CLASSFILE)
	@echo
	@echo

# Snapshot
snapshot:
	@echo
	@echo "  Making a snapshot of all files and folders"
	@echo
	$(MKDIR) -p Snapshots/$(DATETIME)
	$(RSYNC) -a --exclude '*.swp' --exclude '.git' --exclude 'Snapshots' ./ Snapshots/$(DATETIME)/
	cd Snapshots/ ; $(ZIP) -qr $(DATETIME).zip $(DATETIME)
	cd Snapshots/ ; $(RM) -rf $(DATETIME)
	@echo
	@echo

# Clean up
clean:
	@echo
	@echo "  Removing temporary files"
	@echo
	for tmpfile in $(TMPFILES); do ( $(RM) -f $(MAINFILE).$$tmpfile* ); done
	$(RM) -f *.gnuplot *.table
	@echo
	@echo
