#syntax=docker/dockerfile:1.4
FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.28.0.172/remarkable-production-image-5.8.203-tatsu-public-x86_64-toolchain.sh"
      checksum=3f131c6c989679a3e648ed4325e83b481da55cdb96f5665b413a8fc76b55f10d
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.28.0.172/remarkable-production-image-5.8.203-tatsu-public-aarch64-toolchain.sh"
      checksum=90186bbbea7219002ad93b2197c753ac87284bebdde14f8eaeac27dbd9e11fcb
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
