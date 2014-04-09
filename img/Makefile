GS = gs
GS_OPT = -sDEVICE=pdfwrite -dBATCH -dNOPAUSE

all: logos

%.pdf: %.ps
	$(GS) $(GS_OPT) -sOutputFile=full_$@ $<
	pdfcrop --luatex full_$@ $@
	rm full_$@

.PHONY: clean logos

logos: in.tum.pdf uni.tum.pdf

clean:
	rm -f *.pdf
