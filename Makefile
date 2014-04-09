LATEXMK = latexmk
LATEXMK_OPT = -pdflatex=lualatex -latexoption=-halt-on-error -pdf

all: pdf

%.pdf: %.tex img
	$(LATEXMK) $(LATEXMK_OPT) $<

.PHONY: img pdf clean

img:
	$(MAKE) -C img

pdf: main.pdf label.pdf

clean:
	$(MAKE) -C img clean
	rm -f *.pdf *.aux *.fls *.log *.toc *.bbl *.blg *.lof *.lot *.fdb_latexmk
