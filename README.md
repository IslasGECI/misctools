<img src="https://www.islas.org.mx/img/logo.svg" align="right" width="256" />

# 🛠️ Herramientas Misceláneas

MiscTools es un conjunto de herramientas pequeñas y prototipos del equipo de Ciencia de Datos de
GECI.

## 🧰 Lista de herramientas

| Herramienta         | Descripción                                                  |
| ------------------- | ------------------------------------------------------------ |
| geci-checkanalyses  | Usa check-jsonschema para verificar la estructura de analyses.json |
| geci-tdp2xls        | Transforma tabular data packages a Excel                     |
| geci-validate       | Verifica que un data package cumple con el protocolo de GECI |

### 📋 Prerequisitos

Estas instrucciones son para instalar y configurar **MiscTools** en Ubuntu 20.04 (Focal Fossa).

Instala Docker, Git y Make.

```shell
sudo apt update && sudo apt install --yes docker.io git make
```

Para correr Docker sin `sudo` (y evitar el mensaje: _Got permission denied..._) agrega tu usuario al
grupo `docker`:

```shell
sudo usermod -aG docker $USER
```

Reinicia tu máquina para que el sistema re-evalue tu pertenencia al grupo `docker`.

Verifica que puedes correr Docker sin `sudo`:

```shell
docker run hello-world
```

## 🏗️ Instalación

```shell
git clone https://github.com/IslasGECI/misctools.git
cd misctools
make install
cd ..
sudo rm --recursive misctools
```

## ✅ Verifica la instalación

Ejecuta:
```shell
geci-validate --version
```

Si tu instalación es correcta obtendrás un resultado similar a:
```shell
geci-validate v0.1.0+wxyz
```
