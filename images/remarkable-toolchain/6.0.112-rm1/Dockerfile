FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.29.1.0/remarkable-production-image-6.0.112-rm1-public-x86_64-toolchain.sh"
      checksum=92be8659e60948acd6384ef086df53074a07e9e79ede28d814145f022066399a
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.29.1.0/remarkable-production-image-6.0.112-rm1-public-aarch64-toolchain.sh"
      checksum=4348c019d72aa6df9d4d9c403db4307d424140f02cf65606f1d356a612f21f19
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
