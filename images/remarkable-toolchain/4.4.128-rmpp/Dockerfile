FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.18.1.1/ferrari/meta-toolchain-remarkable-4.4.128-ferrari-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "21b3fd56220a7f04f6ce458b8d9602fc7194afe6a3d8e3a7fe1afa5df60594a2  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
