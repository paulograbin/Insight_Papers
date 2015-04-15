all:

	@echo "\n\n\n\n"
	@echo "Gerando PDF... "

	@echo "\n\n\n\n"
	@echo "Primeira vez..."
	pdflatex exemplo-monografia 
	
	@echo "\n\n\n\n"
	@echo "Gera referencias..."
	bibtex exemplo-monografia 

	@echo "\n\n\n\n"
	@echo "Segunda vez..."
	pdflatex exemplo-monografia 

	@echo "\n\n\n\n"
	@echo "Terceira vez..."
	pdflatex exemplo-monografia

	@echo "\n\n\n\n"
	@echo "Abre PDF..."
	open exemplo-monografia.pdf
	
	rm -f *~ *.{log,aux,dvi}
#	bash -c 'rm -f *~ *.{log,aux,dvi} exemplo*pdf *synctex.gz'
