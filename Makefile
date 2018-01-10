# Author: Yu-Ting Shen

SHELL=/bin/bash
THESIS=outhesis_template
BIBFILE=

#TEX = pdflatex -interaction nonstopmode
TEX = pdflatex
BIB = bibtex

clean:
	rm -rf *.aux *.lof *.log *.lot *.toc *.bbl *.blg *pdf

$(THESIS).pdf: $(THESIS).tex $(THESIS).bbl
	$(TEX) $(THESIS)
	$(TEX) $(THESIS)

$(THESIS).bbl: $(THESIS).tex $(BIBFILE)
	$(TEX) $(THESIS)
	$(BIB) $(THESIS)
