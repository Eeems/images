FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.26.0.68/rm1/remarkable-production-image-5.6.75-rm1-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "c40f5a504c71fbb252e505a988f904084c9c8a3e6ec7d12d926b821119904ca1  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
