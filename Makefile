# Instala estas herramientas miscelaneas
install:
	docker pull islasgeci/misctools:latest
	cat ./.bash_aliases >> ~/.bash_aliases
	. ./.bash_aliases

# Enlista phonies
.PHONY: install
