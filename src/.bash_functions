# Corre bash en contenedor para desarrollo
function geci-dev {
    docker run \
    --env BITBUCKET_PASSWORD=$BITBUCKET_PASSWORD \
    --env BITBUCKET_USERNAME=$BITBUCKET_USERNAME \
    --env DISPLAY=$DISPLAY \
    --interactive \
    --rm \
    --tty \
    --volume ${PWD}:/workdir \
    --volume /tmp/.X11-unix:/tmp/.X11-unix \
    "$@" \
    islasgeci/${PWD##*/} bash -c "umask 000 && bash"
}

# Corre make en contenedor para desarrollo
function geci-make {
    OBJETIVO="$@"
    echo "Objetivo: ${OBJETIVO}"
    geci-build
    docker run \
    --env BITBUCKET_PASSWORD=$BITBUCKET_PASSWORD \
    --env BITBUCKET_USERNAME=$BITBUCKET_USERNAME \
    --rm \
    --volume ${PWD}:/workdir \
    islasgeci/${PWD##*/} bash -c "umask 000 && make ${OBJETIVO}"
}

# Ejecuta script dentro de contenedor
function geci-cli {
    DIRECTORIO="$1"
    shift
    COMANDO="$@"
    DIR0=${PWD}
    echo "Directorio: ${DIRECTORIO}"
    echo "Comando: ${COMANDO}"
    cd ${DIRECTORIO}
    geci-build
    docker run \
        --env BITBUCKET_PASSWORD=$BITBUCKET_PASSWORD \
        --env BITBUCKET_USERNAME=$BITBUCKET_USERNAME \
        --rm \
        --volume ${PWD}:/workdir \
        islasgeci/${PWD##*/} bash -c "umask 000 && ${COMANDO}"
    cd ${DIR0}
}
