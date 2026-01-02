FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.23.0.64/ferrari/remarkable-production-image-5.3.95-ferrari-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "aeaf67de7f9a66361daa1a8729ddc7cc61f3a7e55efd3141a23ff0a78502caea  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
