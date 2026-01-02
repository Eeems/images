FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.23.0.64/rm2/remarkable-production-image-5.3.95-rm2-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "40a934d270f213c0d318145434975b6ad1c8a8eaaba6bdf936c59c6a73ab98c8  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
