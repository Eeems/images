FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.24.2.0/chiappa/remarkable-production-image-5.4.107-chiappa-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "fade56d0acdf081d4ca40ea67852fed45f75afa55f895151c871edcaed46900e  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
