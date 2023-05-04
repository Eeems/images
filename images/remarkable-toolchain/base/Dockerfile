FROM ubuntu:latest
LABEL maintainer='Nathaniel van Diepen'

WORKDIR /root

RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get dist-upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y \
  curl \
  build-essential \
  gcc-arm-linux-gnueabihf

COPY --link checkupdates /usr/bin/checkupdates
