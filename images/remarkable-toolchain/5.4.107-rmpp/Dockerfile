FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.24.2.0/ferrari/remarkable-production-image-5.4.107-ferrari-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "cee8ac8fa091e73c65004c035dd1f17779e845f3bc7ea32665770ff7a0aba52b  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
