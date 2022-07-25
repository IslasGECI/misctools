# Agrega alias de misctools
alias geci-checkanalyses='docker pull islasgeci/misctools:latest && docker run --rm --volume ${PWD}:/workdir islasgeci/misctools:latest geci-checkanalyses'
alias geci-tdp2xls='docker pull islasgeci/misctools:latest && docker run --rm --volume ${PWD}:/workdir islasgeci/misctools:latest geci-tdp2xls'
alias geci-validate='docker pull islasgeci/misctools:latest && docker run --rm --volume ${PWD}:/workdir islasgeci/misctools:latest geci-validate'

geci-transform_cat_data () {
    DATA_DIRECTORY="${1:-data}"
    docker pull islasgeci/diferencias_morfometria_posicion_trampas:latest
    docker run --rm --volume "${PWD}/${DATA_DIRECTORY}":/data islasgeci/diferencias_morfometria_posicion_trampas:latest ./src/verify_data.sh /data
}
