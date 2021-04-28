tests: install
	. ./tests/test_geci-install
	. ./tests/test_make-install
	cd tests && . ./test_geci-tdp2xls
	shellspec

# Enlista phonies
.PHONY: \
		install \
		tests

# Instala estas herramientas miscelaneas
install:
	# Copia ejecutables
	chmod +x ./src/*
	mkdir --parents /usr/local/bin
	cp --preserve ./src/* /usr/local/bin
	export PATH="/usr/local/bin:$${PATH}"
	# Instala esquemas de JSONs
	mkdir --parents /usr/local/bin $${HOME}/.schemas
	cp schemas/*.json $${HOME}/.schemas/
	# Instala alias y funciones
	mkdir --parents $${HOME}/.geci
	cp ./src/.bash_* $${HOME}/.geci/
	echo ". ~/.geci/.bash_aliases" >> $${HOME}/.bash_aliases
	echo ". ~/.geci/.bash_functions" >> $${HOME}/.bash_aliases
