FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.25.1.1/chiappa/remarkable-production-image-5.5.125-chiappa-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "5e6026a7c45dd556f7e5ef50299434a8ba28703cbbc78db470610ebc08f457e5  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
