# Herramientas Misceláneas

Conjunto de herramientas pequeñas y prototipos del equipo de Ciencia de Datos - GECI.

## Instalación

```bash
hg clone https://bitbucket.org/IslasGECI/misctools
cd misctools
make install
```

## Configuración del `testMake` para Ubuntu 18.04 (Bionic Beaver)

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

Para correr Docker sin `sudo` (_Got permission denied..._) agrega tu usuario al grupo `docker`:

```bash
sudo usermod -aG docker $USER
```

Haz _log out_ de Ubuntu y luego _log in_ nuevamente para que el sistema re-evalue tu pertenencia al grupo.

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

Corre el `testMake`:

```bash
testMake misctools hola-mundo
```
