FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.22.0.65/rm2/remarkable-production-image-5.2.96-rm2-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "d15a26ec39c20d04258ed73bb6780e7a3d5f1538062cf656f90eaf7549cb8f61  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
