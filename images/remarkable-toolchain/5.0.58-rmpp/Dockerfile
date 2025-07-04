FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.20.0.92/ferrari/remarkable-production-image-5.0.58-ferrari-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "65d95578315202365024b274a9b495136cd85f32dbfe9b35ff6e41b5369f0ea6  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
