FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.24.2.0/rm2/remarkable-production-image-5.4.107-rm2-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "cb1ba8ef40ffcf81522ff44f2be9b70d3b28494c7d16bd6867735061b7e0c65d  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
