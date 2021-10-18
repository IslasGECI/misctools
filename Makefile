# Instala estas herramientas miscelaneas
install:
	docker pull islasgeci/misctools:latest
	cat ./.bash_aliases >> ~/.bash_aliases
	. ./.bash_aliases

# Enlista phonies
.PHONY: install

# El setup se correrá exclusivamente dentro del contenedor
setup:
# Copia ejecutables
	chmod +x /workdir/src/*
	mkdir --parents /usr/local/bin
	cp --preserve /workdir/src/* /usr/local/bin
	export PATH="/usr/local/bin:$${PATH}"
# Instala esquemas de JSONs
	mkdir --parents $${HOME}/.schemas
	cp schemas/*.json $${HOME}/.schemas/
