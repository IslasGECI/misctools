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
	# Crea directorio de trabajo para geci-testmake 
	mkdir --parents /.testmake
	chown $${USER}:$${USER} /.testmake
	# Instala esquemas de JSONs
	if [ ! -d $${HOME}/.schemas ]; then mkdir $${HOME}/.schemas; fi
	cp schemas/*.json $${HOME}/.schemas/
	# Instala alias y funciones
	mkdir --parents $${HOME}/.geci
	cp ./src/.bash_* $${HOME}/.geci/
	echo ". ~/.geci/.bash_aliases" >> $${HOME}/.bash_aliases
	echo ". ~/.geci/.bash_functions" >> $${HOME}/.bash_aliases
