FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.18.1.1/rm2/remarkable-production-image-4.4.128-rm2-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "bb959403cb53f13c815393f8b20c4845e6493ba181c51ccbda8f88f3fce8dca3  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
