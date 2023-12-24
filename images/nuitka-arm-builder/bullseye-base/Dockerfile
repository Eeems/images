#syntax=docker/dockerfile:1.4
FROM arm32v7/debian:bullseye-slim

SHELL ["/bin/bash", "-exc"]

RUN <<EOT
  export DEBIAN_FRONTEND="noninteractive"
  apt-get update
  apt-get install -y \
    ccache \
    clang \
    curl \
    libffi-dev \
    patchelf \
    python3-dev \
    upx
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
