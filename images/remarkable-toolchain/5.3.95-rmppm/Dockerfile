FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.23.0.64/chiappa/remarkable-production-image-5.3.95-chiappa-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "5639df87a34ae52bdeb0fb9ea9ef394b07da415f52b0feb46abe9d9d8382440b  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
