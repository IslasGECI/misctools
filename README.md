# Herramientas Misceláneas (MiscTools)

Conjunto de herramientas pequeñas y prototipos del equipo de Ciencia de Datos de GECI.

Aquí describo cómo instalar MiscTools y cómo configurar `geci-testmake` en Ubuntu 20.04 (Focal
Fossa).

## Prerequisitos

Instal cURL, Git, Make y Docker.

```shell
sudo apt update && sudo apt install curl git make docker.io
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

## Credenciales de Bitbucket

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

## Instalación de MiscTools

```shell
git clone https://github.com/IslasGECI/misctools.git
cd misctools
sudo make install
cd ..
sudo rm --recursive misctools
```

## Verifica la instalación

Para verificar la instalación ejecutaremos `geci-testmake`:

```shell
geci-testmake hola mundo
```

Un mensaje te confirmará que has instalado `geci-testmake` exitosamente.
