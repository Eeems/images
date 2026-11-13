FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.29.1.0/remarkable-production-image-6.0.112-chiappa-public-x86_64-toolchain.sh"
      checksum=0e0c1ac4e432de1aada25109e17c2b70a3be3080bd08fda9cc09f080a3434186
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.29.1.0/remarkable-production-image-6.0.112-chiappa-public-aarch64-toolchain.sh"
      checksum=6448961ed87453e7e79a621e05944a9d571949e1d8ec8d7f13b429e4fcf31bce
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
