all: build/default.pdf build/custom.pdf

build/default.pdf: default.tex beamerthememanc.sty | build
	lualatex --shell-escape --output-directory=build $^

build/custom.pdf: custom.tex beamerthememanc.sty | build
	lualatex --shell-escape --output-directory=build $^

build:
	mkdir -p ./build/

