FROM ubuntu:latest
LABEL maintainer='Nathaniel van Diepen'

WORKDIR /root

RUN apt-get update && \
  DEBIAN_FRONTEND="noninteractive" apt-get dist-upgrade -y && \
  DEBIAN_FRONTEND="noninteractive" apt-get install -y \
    bc \
    build-essential \
    curl \
    file \
    gcc-arm-linux-gnueabihf \
    git \
    libssl-dev \
    lzop \
    python3 &&\
  rm -rf /var/lib/apt/lists/*

COPY --link checkupdates /usr/bin/checkupdates
COPY --link update /usr/local/bin/update
