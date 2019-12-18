robomech2020.pdf: robomech2020.dvi
	dvipdfmx -p a4 robomech2020.dvi
	touch robomech2020.pdf

robomech2020.dvi: *.tex
	platex robomech2020.tex
	pbibtex robomech2020.aux
	platex robomech2020.tex
	platex robomech2020.tex

clean:
	rm -f *.aux *.log *.dvi *.bbl *.blg *.pdf *.ilg *.idx *.toc *.ind
