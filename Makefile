# Author: Yu-Ting Shen

SHELL=/bin/bash
THESIS=outhesis_template
#BIBFILE=

#TEX = pdflatex -interaction nonstopmode
TEX = pdflatex
BIB = bibtex

all: $(THESIS).pdf
	acroread $(THESIS).pdf

.PHONY: clean

clean:
#	rm -rf *.aux *.lof *.log *.lot *.toc *.bbl *.blg *.brf *.out *pdf
#	rm -rf *.aux *.lof *.log *.lot *.toc *.bbl *.blg *.brf *.out
	rm -rf *.aux *.lof *.log *.lot *.toc *.blg *.brf *.out

$(THESIS).aux: $(THESIS).tex
	$(TEX) $(THESIS)

$(THESIS).bbl: $(THESIS).aux
	$(BIB) $(THESIS)

$(THESIS).pdf: $(THESIS).tex $(THESIS).bbl
	$(TEX) $(THESIS)
	$(TEX) $(THESIS)
