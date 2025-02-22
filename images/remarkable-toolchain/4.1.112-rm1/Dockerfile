FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://storage.googleapis.com/remarkable-codex-toolchain/3.15.4.2/remarkable-platform-image-4.1.112-rm1-public-x86_64-toolchain.sh -o install-toolchain.sh
  echo "2c818010f348490b9f2c699b4991204c15a1b0b85e8c9e048eb54a7623da4233  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
