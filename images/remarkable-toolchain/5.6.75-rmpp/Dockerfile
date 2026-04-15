FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.26.0.68/ferrari/remarkable-production-image-5.6.75-ferrari-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "5fc891f48aeee3191a104bb1f61e0a4ac4e8392ca28328b6a6fbdf8bc00ca13a  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
