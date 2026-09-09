#syntax=docker/dockerfile:1.4
FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.28.0.172/remarkable-production-image-5.8.203-ferrari-public-x86_64-toolchain.sh"
      checksum=4d37b13e673d1963c48e09f1d39182084938bb7990361a54ad73185a49726698
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.28.0.172/remarkable-production-image-5.8.203-ferrari-public-aarch64-toolchain.sh"
      checksum=65e5b98f9f7c83d857c5c720f7f6cb2d61fe20f4513dec023ad00aac27c85ae4
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
