FROM eeems/remarkable-toolchain:6.0.112-rm1

RUN <<EOT
  export DEBIAN_FRONTEND="noninteractive"
  apt-get update
  apt-get dist-upgrade -y
  apt-get install -y \
    qt6-base-dev \
    golang-go \
    rustup
  apt-get clean
  rm -rf /var/lib/apt/lists/*
EOT

RUN rustup toolchain install nightly --profile minimal --target armv7-unknown-linux-gnueabihf

ENV PATH="$PATH:/usr/lib/qt6/libexec"
