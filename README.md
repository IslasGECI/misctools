# 🛠️ Herramientas Misceláneas (MiscTools)

Conjunto de herramientas pequeñas y prototipos del equipo de Ciencia de Datos de GECI.

## 🧰 Lista de herramientas


| Herramienta         | Descripción  |
| ------------------- | ------------ |
| geci-checkanalyses  | Usa jsonschema para verificar la estructura de analyses.json  |
| geci-tdp2xls        | Transforma tabular data packages a Excel  |
| geci-validate       | Verifica que un data package cumple con el protocolo de GECI  |

### 📋 Prerequisitos para `geci-checkanalyses`

Instala `jsonschema`.
```
$ pip install jsonschema
```

### 📋 Prerequisitos para `geci-validate`

Instala `goodtables`.
```shell
pip install goodtables
```

### 📋 Prerequisitos para `geci-tdp2xls`

Instala `jq` y `ssconvert`.
```shell
$ sudo apt  install jq
$ sudo apt-get --yes install --no-install-recommends gnumeric
```

## 🛂 Credenciales de Bitbucket

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

## 🏗️ Instalación de MiscTools

```shell
git clone https://github.com/IslasGECI/misctools.git
cd misctools
sudo make install
cd ..
sudo rm --recursive misctools
```

## ✅ Verifica la instalación
