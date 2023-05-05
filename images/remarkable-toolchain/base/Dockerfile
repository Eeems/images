FROM ubuntu:latest
LABEL maintainer='Nathaniel van Diepen'

WORKDIR /root

RUN apt-get update && \
  DEBIAN_FRONTEND="noninteractive" apt-get dist-upgrade -y && \
  DEBIAN_FRONTEND="noninteractive" apt-get install -y \
    curl \
    build-essential \
    gcc-arm-linux-gnueabihf \
    python3 \
    file && \
  rm -rf /var/lib/apt/lists/*

COPY --link checkupdates /usr/bin/checkupdates
