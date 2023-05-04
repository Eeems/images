FROM remarkable-toolchain:base
LABEL maintainer='Nathaniel van Diepen'

WORKDIR /root

RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get dist-upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y \
  curl \
  build-essential \
  gcc-arm-linux-gnueabihf \
  python

RUN curl https://storage.googleapis.com/remarkable-codex-toolchain/codex-x86_64-cortexa7hf-neon-rm11x-toolchain-3.1.15.sh \
  -o install-toolchain.sh
RUN chmod +x install-toolchain.sh
RUN ./install-toolchain.sh -y \
  -d /opt/codex/3.1.15/
