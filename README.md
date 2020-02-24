# Herramientas Misceláneas

Conjunto de herramientas pequeñas y prototipos del equipo de Ciencia de Datos - GECI.

Aquí describo cómo instalar `misctools` y cómo configurar `geci-testmake` en Linux Mint 19.2 (Tina) y en Ubuntu 18.04 (Bionic Beaver).

## Prerequisitos

### cURL

Verifica que tienes cURL instalado:

```shell
curl --version
```

Si no tienes cURL instálalo con:

```shell
sudo apt install curl
```

### Git

Verifica si tienes Git instalado:

```shell
git --version
```

Si no tienes Git instálalo con:

```shell
sudo apt install git
```

### Make

Verifica si tienes Make instalado:

```shell
make --version
```

Si no tienes Make instálalo con:

```shell
sudo apt install make
```

## Instalación de misctools

```shell
git clone https://github.com/IslasGECI/misctools.git
cd misctools
sudo make install
cd ..
sudo rm --recursive misctools
```

## Configuración de `geci-testmake`

Exporta tus credenciales de Bitbucket como variables de entorno:

```shell
export BITBUCKET_USERNAME=<USUARIO>
export BITBUCKET_PASSWORD=<CONTRASEÑA>
```

(Sustituye `<USUARIO>` y `<CONTRASEÑA>` con las credenciales correspondientes)

> Incluye los dos comandos anteriores (`export`) en tu `~/.profile` para que esta configuración sea permanente.

Si no has instalado Docker instálalo con:

```shell
sudo apt install docker.io
```

Verifica que tienes Docker instalado:

```shell
docker --version
```

Para correr Docker sin `sudo` (y evitar el mensaje: _Got permission denied..._) agrega tu usuario al grupo `docker`:

```shell
sudo usermod -aG docker $USER
```

En Ubuntu haz _log out_ y luego _log in_ para que el sistema re-evalue tu pertenencia al grupo. En Linux Mint deberás reiniciar la máquina ya que hacer _log out_ y _log in_ no es suficiente.

Verifica que puedes correr Docker sin `sudo`:

```shell
docker run hello-world
```

Nn _bug_ en la instalación de este repo actualmente nos obliga a crear manualmente el directorio de trabajo para `geci-testmake`:

```shell
sudo mkdir /.testmake
sudo chown $USER:$USER /.testmake
```

(El paso anterior no debería ser necesario cuando se corrija el `make install` de este repo.)

Finalmente, corre `geci-testmake`:

```shell
geci-testmake hola mundo
```
