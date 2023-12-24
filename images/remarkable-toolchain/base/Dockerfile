#syntax=docker/dockerfile:1.4
FROM ubuntu:latest
LABEL maintainer='Nathaniel van Diepen'

WORKDIR /root

COPY --link checkupdates /usr/bin/checkupdates
COPY --link update /usr/local/bin/update

SHELL ["/bin/bash", "-exc"]

RUN <<EOT
  export DEBIAN_FRONTEND="noninteractive"
  apt-get update
  apt-get dist-upgrade -y
  apt-get install -y \
    bc \
    build-essential \
    curl \
    file \
    gcc-arm-linux-gnueabihf \
    git \
    libssl-dev \
    lzop \
    python3
  apt-get clean
  rm -rf /var/lib/apt/lists/*
EOT
