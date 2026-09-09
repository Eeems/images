FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.27.0.97/tatsu/remarkable-production-image-5.7.119-tatsu-public-x86_64-toolchain.sh"
      checksum=165d9f090a8bece2e8df695adb606cd7146c1b76699be3d530c0f23105264dd5
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.27.0.97/tatsu/remarkable-production-image-5.7.119-tatsu-public-aarch64-toolchain.sh"
      checksum=fb178d0ed969702a1f386f7978f766855c173e1817507310663045b99d0e2c86
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
