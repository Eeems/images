#syntax=docker/dockerfile:1.4
FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.28.0.172/remarkable-production-image-5.8.203-rm2-public-x86_64-toolchain.sh"
      checksum=e2daf17a86d375aae6d290af993060f3dfb488568ca83c401eaa47869e975179
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.28.0.172/remarkable-production-image-5.8.203-rm2-public-aarch64-toolchain.sh"
      checksum=1fc03aac4abdb07be96064516cfcdf548bf5fe246ff35831566760a2a0197ea9
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
