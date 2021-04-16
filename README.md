# Herramientas Misceláneas

Conjunto de herramientas pequeñas y prototipos del equipo de Ciencia de Datos - GECI.

Aquí describo cómo instalar `misctools` y cómo configurar `geci-testmake` en Ubuntu 20.04 (Focal
Fossa).

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

### Docker

Verifica si tienes Docker instalado:

```shell
docker --version
```

Si no tienes Docker instálalo con:

```shell
sudo apt install docker.io
```

Para correr Docker sin `sudo` (y evitar el mensaje: _Got permission denied..._) agrega tu usuario al
grupo `docker`:

```shell
sudo usermod -aG docker $USER
```

Reinicia tu máquina para que el sistema re-evalue tu pertenencia al grupo.

Verifica que puedes correr Docker sin `sudo`:

```shell
docker run hello-world
```
### Credenciales de Bitbucket

Al final de tu archivo `~/.profile`, agrega las dos líneas siguientes:

```shell
export BITBUCKET_USERNAME=<USUARIO>
export BITBUCKET_PASSWORD=<CONTRASEÑA>
```

(Sustituye `<USUARIO>` y `<CONTRASEÑA>` con las credenciales correspondientes)

Ejecuta `~/.profile` para cargar tus credenciales de Bitbucket como variables de entorno.

```shell
. ~/.profile
```

## Instalación de geci-testmake

```shell
git clone https://github.com/IslasGECI/misctools.git
cd misctools
sudo make install
cd ..
sudo rm --recursive misctools
```

### Verifica la instalación

Finalmente, corre `geci-testmake`:

```shell
geci-testmake hola mundo
```

Un mensaje te confirmará que has instalado `geci-testmake` exitosamente.
