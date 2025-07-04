FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.20.0.92/rm2/remarkable-production-image-5.0.58-rm2-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "cce0f0e49f273b5463a5e126cc52f4754da717f3c293f5b71e4ad3ab7cd5c5d3  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
