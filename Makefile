LATEXMK = latexmk
LATEXMK_OPT = -pdflatex=lualatex -latexoption=-halt-on-error -pdf

all: pdf

main.pdf: images
	$(LATEXMK) $(LATEXMK_OPT) main.tex

label.pdf:
	$(LATEXMK) $(LATEXMK_OPT) label.tex

.PHONY: images pdf clean
images:
	$(MAKE) -C img

pdf: main.pdf label.pdf

clean:
	$(MAKE) -C img clean
	rm -f main.pdf label.pdf *.aux *.fls *.log *.toc *.bbl *.blg *.lof *.lot *.fdb_latexmk
