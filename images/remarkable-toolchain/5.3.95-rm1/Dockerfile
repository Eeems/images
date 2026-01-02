FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.23.0.64/rm1/remarkable-production-image-5.3.95-rm1-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "b8e1c3b1671c23206ad121e52f28cace90505496234072314fc1ad59f39406d6  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
