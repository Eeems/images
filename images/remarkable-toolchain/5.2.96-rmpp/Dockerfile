FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.22.0.65/ferrari/remarkable-production-image-5.2.96-ferrari-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "5da0019b2af9709913476aa8ed424b383c2cc872823c54a2ebc91ee95ca7390d  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
