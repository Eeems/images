FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.26.0.68/chiappa/remarkable-production-image-5.6.75-chiappa-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "2616ef23a3d0fe6e51a7365de613773ade186e980ca3be6711c5332c7441b43b  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
