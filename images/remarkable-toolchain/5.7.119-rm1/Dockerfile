FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.27.0.97/rm1/remarkable-production-image-5.7.119-rm1-public-x86_64-toolchain.sh"
      checksum=dbcedcee5db3e17c62b24132b83cd418e1f0590e1d9e431cb787cf6e798a21cf
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.27.0.97/rm1/remarkable-production-image-5.7.119-rm1-public-aarch64-toolchain.sh"
      checksum=2ecf7e2de6e64ca509252d2ecdc00f7818116db85af5a1192d7ae707ac22b1b5
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
