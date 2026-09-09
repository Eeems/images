FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.27.0.97/rm2/remarkable-production-image-5.7.119-rm2-public-x86_64-toolchain.sh"
      checksum=7ac74daf817ec9d0c52bcaec9f23b1d3ec5cf7e5a41f58e1d739fb54fbf947d4
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.27.0.97/rm2/remarkable-production-image-5.7.119-rm2-public-aarch64-toolchain.sh"
      checksum=1349416c64fdc4ccd71729604b57b64acf7329a179a82dd768a3e4da2ab9a6b7
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
