FIGFILES=FF1 FF2 FF3 FF4
all:
	for i in $(FIGFILES) ; \
	do \
		fig2dev -L pdf $$i.fig > $$i.pdf;\
	done
	fig2dev -L pdftex phy.fig phy.pdf
	fig2dev -L pdftex_t -p phy.pdf phy.fig phy.pdf_t
	pdflatex template.tex
	bibtex template.aux
	pdflatex template.tex
	pdflatex template.tex
#   fig2dev -L pdf FF1.fig > FF1.pdf

clean:
	rm -f *.aux FF1.pdf FF2.pdf FF3.pdf FF4.pdf *.log *.bbl *.blg
