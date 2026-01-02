FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.24.2.0/rm1/remarkable-production-image-5.4.107-rm1-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "7d2f31add7856eea3c6bafecef3c49edf8a0937020545099e1912f5e85b2095d  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
