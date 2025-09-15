SHELL := /bin/bash

# Enlista phonies
.PHONY: \
	check \
	install \
	setup \
	tests

check:
	shellcheck --shell=bash src/geci-*

init: init_git setup tests

init_git:
	git config --global --add safe.directory /workdir
	git config --global user.name "Ciencia de Datos • GECI"
	git config --global user.email "ciencia.datos@islas.org.mx"


# Instala estas herramientas miscelaneas
install:
	docker pull islasgeci/misctools:latest
	cat ./.bash_aliases >> ~/.bash_aliases
	source ~/.bash_aliases

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

tests:
	tests/test_geci-tdp2xls
	shellspec tests/

