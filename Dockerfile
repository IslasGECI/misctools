FROM ubuntu:18.04
RUN apt-get update && apt-get install --yes --no-install-recommends \
            csvkit \
            gnumeric \
            jq \
            make
WORKDIR /workdir
CMD [ "make" ]
