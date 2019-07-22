# Adapted from Makefile for Sybila beamer theme: 
# https://github.com/sybila/beamer-theme.git

SOURCE_DIR=theme
TO_COPY=beamerthemeUH.sty UHMLogo.jpg uhm_bg.pdf

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	DEST_DIR=/usr/share/texmf/tex/latex/beamer/base/themes/theme
	TEXHASH=texhash
endif
ifeq ($(UNAME_S),Darwin)
	DEST_DIR=/usr/local/texlive/2009/texmf-dist/tex/latex/beamer/themes/theme
	TEXHASH=/usr/local/texlive/2009/bin/universal-darwin/texhash
endif

.PHONY: install
install:
	@echo " [beamer theme directory] $(DEST_DIR)"; \
	for FILE in $(TO_COPY); do\
		echo " [copy] $(SOURCE_DIR)/$$FILE"; \
		sudo cp "$(SOURCE_DIR)/$$FILE" "$(DEST_DIR)"; \
		sudo chmod +r "$(DEST_DIR)/$$FILE"; \
	done;\
	sudo $(TEXHASH);\

.PHONY: uninstall
uninstall:
	@echo " [beamer theme directory] $(DEST_DIR)"; \
	for FILE in $(TO_COPY); do\
		echo " [remove] $(DEST_DIR)/$$FILE"; \
		sudo rm -f "$(DEST_DIR)/$$FILE"; \
	done;\
	sudo $(TEXHASH);\
