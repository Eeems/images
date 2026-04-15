FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.26.0.68/rm2/remarkable-production-image-5.6.75-rm2-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "429ddff25c49dfc3e06b96470cd011b869c2b6bbe5b74ffbbc7757aa7a6dece9  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
