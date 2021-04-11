SECS := $(wildcard secs/*.tex)

all: TANA.pdf

TANA.pdf: main.tex $(SECS) mstyle.sty
	pdflatex main.tex
	pdflatex main.tex
	mkdir -p build
	mv *.toc build
	mv *.aux build
	mv *.log build
	mv *.out build
	mv main.pdf TANA.pdf
	rm -rf build
