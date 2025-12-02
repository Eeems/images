FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.22.0.65/rm1/remarkable-production-image-5.2.96-rm1-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "8339cbc1d3eb3c170f89ecd75ee5eb1082c2859466790c553dc3f9ebde2c43eb  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
