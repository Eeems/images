FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.18.1.1/rm1/remarkable-production-image-4.4.128-rm1-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "f1ba897bd694b857dd1a3c9a00efa2c7e5898d2bc07135a5d3034974550c4bfe  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
