tests: install
	. ./tests/test_geci-install
	. ./tests/test_make-install
	cd tests && . ./test_geci-tdp2xls

# Enlista phonies
.PHONY: install tests

# Instala estas herramientas miscelaneas
install:
	# Copia ejecutables
	if [ ! -d /usr/local/bin ]; then mkdir /usr/local/bin; fi
	cp ./src/* /usr/local/bin
	chmod +x /usr/local/bin/geci-*
	export PATH="$${PATH}:/usr/local/bin"
	# Instala esquemas de JSONs
	if [ ! -d $${HOME}/.schemas ]; then mkdir $${HOME}/.schemas; fi
	cp schemas/*.json $${HOME}/.schemas/
	# Instala alias y funciones
	cp ./src/.bash_* $${HOME}/
