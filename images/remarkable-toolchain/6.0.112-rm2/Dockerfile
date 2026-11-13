FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.29.1.0/remarkable-production-image-6.0.112-rm2-public-x86_64-toolchain.sh"
      checksum=c1b210622ebc3458e332666a0e89ae75686474963b8a3b63f6dba94a462a5724
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.29.1.0/remarkable-production-image-6.0.112-rm2-public-aarch64-toolchain.sh"
      checksum=07a1bb72120fcd82b4476b318a00ee33f845229013a6627b711bf4a1df800b69
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
