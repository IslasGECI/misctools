# Enlista phonies
.PHONY: install requirements tests

# Instala estas herramientas miscelaneas
install:
	# Copia ejecutables
	if [ ! -d /usr/local/bin ]; then mkdir /usr/local/bin; fi
	cp ./src/* /usr/local/bin
	chmod +x /usr/local/bin/geci-*
	chmod +x /usr/local/bin/testMake
	export PATH="$${PATH}:/usr/local/bin"
	# Instala esquemas de JSONs
	if [ ! -d $${HOME}/.schemas ]; then mkdir $${HOME}/.schemas; fi
	cp schemas/*.json $${HOME}/.schemas/
	# Instala alias y funciones
	cp ./src/.bash_* $${HOME}/

# Instala requisitos
requirements:
	apt-get update && \
        apt-get install --yes --no-install-recommends \
            csvkit \
            gnumeric \
            jq

# Corre las pruebas
tests:
	. ./tests/test_geci-install
	. ./tests/test_make-install
	cd tests && . ./test_geci-tdp2xls
