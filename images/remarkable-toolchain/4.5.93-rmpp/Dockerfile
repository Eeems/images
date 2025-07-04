FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.19.0.82/ferrari/remarkable-production-image-4.5.93-ferrari-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "366b54275bc0f2befc0f4821da33920cc4172dfa457812e0b6c2ef909a1c264a  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
