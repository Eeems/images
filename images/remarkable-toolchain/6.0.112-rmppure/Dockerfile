FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.29.1.0/remarkable-production-image-6.0.112-tatsu-public-x86_64-toolchain.sh"
      checksum=00d890c04cb08daabd48d7e5f63b02b3e8d1d707efecbe0923cf869c6aaabe21
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.29.1.0/remarkable-production-image-6.0.112-tatsu-public-aarch64-toolchain.sh"
      checksum=b636ca19b813b9ebcb860cec5e77c6d5d604198063191a456544d6967626373b
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
