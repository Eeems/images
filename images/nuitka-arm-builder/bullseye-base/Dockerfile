#syntax=docker/dockerfile:1.4
FROM arm32v7/debian:bullseye-slim

SHELL ["/bin/bash", "-exc"]

RUN <<EOT
  export DEBIAN_FRONTEND="noninteractive"
  apt-get update
  apt-get install -y \
    build-essential \
    ccache \
    curl \
    libbz2-dev \
    libffi-dev \
    liblzma-dev \
    libncursesw5-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    libxml2-dev \
    libxmlsec1-dev \
    patchelf \
    python3-dev \
    tk-dev \
    upx \
    xz-utils \
    zlib1g-dev
  apt-get clean
  rm -rf /var/lib/apt/lists/* /var/log/dpkg.log /var/log/apt
EOT

ENV PYENV_ROOT="/opt/lib/pyenv"

RUN <<EOT
  export DEBIAN_FRONTEND="noninteractive"
  apt-get update
  apt-get install -y git
  curl https://pyenv.run | bash
  apt-get autoremove -y git
  apt-get clean
  rm -rf /var/lib/apt/lists/* /var/log/dpkg.log /var/log/apt
EOT

ENV PATH="/opt/lib/pyenv/bin:$PATH"

ADD setup.sh /opt/bin/
