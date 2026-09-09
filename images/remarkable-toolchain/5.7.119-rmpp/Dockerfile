FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.27.0.97/ferrari/remarkable-production-image-5.7.119-ferrari-public-x86_64-toolchain.sh"
      checksum=324d77d84dda5ba8fac484107b3c9981daaa28fe5ebed6589172f0cb1bcdd020
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.27.0.97/ferrari/remarkable-production-image-5.7.119-ferrari-public-aarch64-toolchain.sh"
      checksum=218847107b9fca7bff8fb92db01ef5f74ec3df283a9ff0fe3a6e62b64a8237b4
      ;;
    *)
      echo "$TARGETARCH not supported"
      exit 1
      ;;
  esac
  curl "$url" -o install-toolchain.sh
  echo "$checksum  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
