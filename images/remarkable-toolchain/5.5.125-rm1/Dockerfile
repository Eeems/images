FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.25.1.1/rm1/remarkable-production-image-5.5.125-rm1-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "20a19e587952da3c9a460724e361a201565c8d80d0168b07cd2f03cd54774f58  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
