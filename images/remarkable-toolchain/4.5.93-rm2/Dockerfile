FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.19.0.82/rm2/remarkable-production-image-4.5.93-rm2-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "d84e8dad4c33ea6887f16cf1a95ced63fcb90d679569ca03e7a19495ac709748  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
