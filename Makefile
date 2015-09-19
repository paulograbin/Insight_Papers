all:

	@echo "****************************** Gerando PDF... ******************************"
	@echo "****************************** Deletando as merdas... ******************************"
	rm -f *~ *.{log,aux,dvi,blg,toc,lof,lot,out}

	@echo "\n\n\n\n"
	@echo "****************************** Primeira vez... ******************************"
	/Library/TeX/texbin/pdflatex PauloGrabin_artigo
	
	@echo "\n\n\n\n"
	@echo "****************************** Gera referencias... ******************************"
	/Library/TeX/texbin/bibtex PauloGrabin_artigo

	@echo "\n\n\n\n"
	@echo "****************************** Segunda vez... ******************************"
	/Library/TeX/texbin/pdflatex PauloGrabin_artigo

	@echo "\n\n\n\n"
	@echo "****************************** Terceira vez... ******************************"
	/Library/TeX/texbin/pdflatex PauloGrabin_artigo

	@echo "\n\n\n\n"
	@echo "****************************** Abre PDF... ******************************"
	open PauloGrabin_artigo.pdf
	
	@echo "****************************** Deletando as merdas... ******************************"
	rm -f *~ *.{log,aux,dvi}
#	bash -c 'rm -f *~ *.{log,aux,dvi} exemplo*pdf *synctex.gz'
