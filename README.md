# Herramientas Misceláneas

Conjunto de herramientas pequeñas y prototipos del equipo de Ciencia de Datos - GECI.

Aquí describo cómo instalar `misctools` y cómo configurar `geci-testmake` en Linux Mint 19.2 (Tina) y en Ubuntu 18.04 (Bionic Beaver).

## Prerequisitos

En Linux Mint, primero deberás instalar Git; en Ubuntu, Git ya viene instalado.

Verifica si tienes Git instalado:

```bash
git --version
```

Si no tienes Git instálalo con:

```bash
sudo apt install git
```

## Instalación de misctools

```bash
git clone https://github.com/IslasGECI/misctools.git
cd misctools
sudo make install
```

## Configuración de `geci-testmake`

Exporta tus credenciales de Bitbucket como variables de entorno:

```bash
export BITBUCKET_USERNAME=<USUARIO>
export BITBUCKET_PASSWORD=<CONTRASEÑA>
```

(Sustituye `<USUARIO>` y `<CONTRASEÑA>` con las credenciales correspondientes)

> Incluye los dos comandos anteriores (`export`) en tu `~/.profile` para que esta configuración sea permanente.

Si no has instalado Docker instálalo con:

```bash
sudo apt install docker.io
```

Verifica que tienes Docker instalado:

```bash
docker --version
```

Para correr Docker sin `sudo` (y evitar el mensaje: _Got permission denied..._) agrega tu usuario al grupo `docker`:

```bash
sudo usermod -aG docker $USER
```

En Ubuntu haz _log out_ y luego _log in_ para que el sistema re-evalue tu pertenencia al grupo. En Linux Mint deberás reiniciar la máquina ya que hacer _log out_ y _log in_ no es suficiente.

Verifica que puedes correr Docker sin `sudo`:

```bash
docker run hello-world
```

Verifica que tienes cURL instalado:

```bash
curl --version
```

Si no tienes cURL instálalo con:

```bash
sudo apt install curl
```

Finalmente, corre `geci-testmake`:

```bash
geci-testmake hola mundo
```
