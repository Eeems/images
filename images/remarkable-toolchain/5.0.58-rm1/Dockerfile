FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.20.0.92/rm1/remarkable-production-image-5.0.58-rm1-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "4ae3130539939593308ef9f2a2ef31102518d1559e5687718ff1c677ba244410  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
