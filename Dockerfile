FROM ubuntu:20.04
WORKDIR /workdir
COPY . .

# Define variables de entorno
ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/root/.local/lib/shellspec:$PATH"
ENV PYTHONIOENCODING=utf-8
ENV QT_QPA_PLATFORM=offscreen
ENV TZ=US/Pacific

# Instala paquetes en el sistema operativo
RUN apt-get update && apt-get install --yes --no-install-recommends apt-utils
RUN apt-get update && apt-get install --yes --no-install-recommends \
      ca-certificates \
      csvkit \
      curl \
      git \
      gnumeric \
      jq \
      make \
      python \
      python3-pip \
      r-base \
        && \
    apt clean

# Instala módulos con pip
RUN pip install \
      frictionless \
      goodtables \
      jsonschema

# Instala ShellSpec
RUN curl --fail --location https://git.io/shellspec --show-error --silent | sh -s -- --yes

# Make script executable
RUN make setup
