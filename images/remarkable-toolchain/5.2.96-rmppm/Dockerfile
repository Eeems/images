FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.22.0.65/chiappa/remarkable-production-image-5.2.96-chiappa-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "53ce902e79aae56bb3faddad59e98f189f6e966de0860f4c9e7f03419e4ed75b  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
