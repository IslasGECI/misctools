# Borra contenedores no usados e imágenes no etiquetadas
alias cld='\
      docker rm $(docker ps --all --quiet); \
      docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'

# Corre bash de imagen islasgeci/base en un contenedor
alias geci-bash='docker run \
      --interactive \
      --rm \
      --tty \
      --volume $PWD:/workdir \
      islasgeci/base:latest bash -c "umask 000 && bash"'

# Corre bash de imagen islasgeci/jupyter en un contenedor
alias geci-bash='docker run \
      --interactive \
      --rm \
      --tty \
      --volume $PWD:/workdir \
      islasgeci/jupyter:latest bash -c "umask 000 && bash"'

# Consturye imagen en a partir del Dockerfile del directorio actual
alias geci-build='docker build --tag islasgeci/${PWD##*/}:latest . && \
                  docker build --tag islasgeci/${PWD##*/}:$(docker images -q islasgeci/${PWD##*/}:latest | cut -c 1-4) .'


# Enlista imágenes de Docker
alias lsi='docker image ls'

# Borra imagen de Docker
alias rmi='docker rmi --force'

if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi
