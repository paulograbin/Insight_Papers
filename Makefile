all:

	@echo "\n\n\n\n"
	@echo "****************************** Gerando PDF... ******************************"

	@echo "\n\n\n\n"
	@echo "****************************** Primeira vez... ******************************"
	pdflatex PauloGrabin_monografia 
	
	@echo "\n\n\n\n"
	@echo "****************************** Gera referencias... ******************************"
	bibtex PauloGrabin_monografia 

	@echo "\n\n\n\n"
	@echo "****************************** Segunda vez... ******************************"
	pdflatex PauloGrabin_monografia 

	@echo "\n\n\n\n"
	@echo "****************************** Terceira vez... ******************************"
	pdflatex PauloGrabin_monografia

	@echo "\n\n\n\n"
	@echo "****************************** Abre PDF... ******************************"
	open PauloGrabin_monografia.pdf
	
	@echo "****************************** Deletando as merdas... ******************************"
	rm -f *~ *.{log,aux,dvi,bbl,blg,toc,lof,lot}
#	bash -c 'rm -f *~ *.{log,aux,dvi} exemplo*pdf *synctex.gz'
