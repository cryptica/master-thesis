GS = gs
GS_OPT = -sDEVICE=pdfwrite -dBATCH -dNOPAUSE

all: logos

logos: in_tum.pdf tum.pdf

tum.pdf:
	$(GS) $(GS_OPT) -sOutputFile=full_$@ uni.tum.ps
	pdfcrop --luatex full_$@ $@
	rm full_$@

in_tum.pdf:
	$(GS) $(GS_OPT) -sOutputFile=full_$@ in.tum.ps
	pdfcrop --luatex full_$@ $@
	rm full_$@

.PHONY: clean
clean:
	rm -f tum.pdf in_tum.pdf
