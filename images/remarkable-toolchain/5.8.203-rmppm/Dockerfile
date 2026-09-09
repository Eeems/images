#syntax=docker/dockerfile:1.4
FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.28.0.172/remarkable-production-image-5.8.203-chiappa-public-x86_64-toolchain.sh"
      checksum=150826499b9e02b80d1acdfb89cad6b68bcf0b8862fb5258efd90ace115f2d54
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.28.0.172/remarkable-production-image-5.8.203-chiappa-public-aarch64-toolchain.sh"
      checksum=ae0dcec8ff161a90f72b5bbeb77f11c5a14c6c6045c1655584561935994c1832
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
