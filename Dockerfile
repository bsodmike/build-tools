FROM ubuntu:16.04
MAINTAINER Adrien Lecharpentier <me@alecharp.fr>

RUN apt-get update && apt-get -y upgrade

RUN groupadd -g 1000 build && \
  useradd -u 1000 -g 1000 -m -s /bin/bash build

RUN apt-get install -y git npm

RUN npm i -g gulp

USER build
WORKDIR /home/build
