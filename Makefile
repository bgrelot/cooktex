all:
	./scan.sh
#	latex livredecuisine.tex
	pdflatex livredecuisine
	pdflatex livredecuisine

view:
	evince livredecuisine.pdf


clean:
	@rm -f *.aux *.toc *.log *.pdf *.dvi *.ilg *.ind *.bmt *.glo *.gls *.idx *.ilg *.ind *.lof *.lot *.mtc*

