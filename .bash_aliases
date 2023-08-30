# Agrega alias de misctools
alias geci-checkanalyses='docker pull islasgeci/misctools:latest && docker run --rm --volume ${PWD}:/workdir islasgeci/misctools:latest geci-checkanalyses'
alias geci-tdp2xls='docker pull islasgeci/misctools:latest && docker run --rm --volume ${PWD}:/workdir islasgeci/misctools:latest geci-tdp2xls'
