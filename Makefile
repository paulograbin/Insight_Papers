all:

	@echo "Gerando PDF..."
	pdflatex exemplo-monografia bibtex exemplo-monografia pdflatex exemplo-monografia pdflatex exemplo-monografia
	rm -f *~ *.{log,aux,dvi}
#	bash -c 'rm -f *~ *.{log,aux,dvi} exemplo*pdf *synctex.gz'
