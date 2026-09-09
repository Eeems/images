FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.27.0.97/chiappa/remarkable-production-image-5.7.119-chiappa-public-x86_64-toolchain.sh"
      checksum=f22794bc6bb6729e648a7404a561e870d537818bd62a2f9950522f0cf15b4130
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.27.0.97/chiappa/remarkable-production-image-5.7.119-chiappa-public-aarch64-toolchain.sh"
      checksum=d6e6512f812d1e1c8f721fe1cce957fec461434fd3bd04ce50ff6fdd5744e1ff
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
