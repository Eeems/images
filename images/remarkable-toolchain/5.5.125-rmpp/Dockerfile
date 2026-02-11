FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.25.1.1/ferrari/remarkable-production-image-5.5.125-ferrari-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "4ce06be73e8f042ff5eeb667d9ec688fda634a33b67f568a18a02284c36073fd  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
