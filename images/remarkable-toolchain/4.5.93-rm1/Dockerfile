FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.19.0.82/rm1/remarkable-production-image-4.5.93-rm1-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "7a206fff539e508da2b5bc539d1995a3a2348fa1f503e5eab4964074a9f961f4  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
