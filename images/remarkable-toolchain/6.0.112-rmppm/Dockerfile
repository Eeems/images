#syntax=docker/dockerfile:1.4
FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.29.1.0/remarkable-production-image-6.0.112-ferrari-public-x86_64-toolchain.sh"
      checksum=e517362f102f77e0b140c0ed53a74bea8a3e6fe4048199ea44df7d9af2683ebb
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.29.1.0/remarkable-production-image-6.0.112-ferrari-public-aarch64-toolchain.sh"
      checksum=83127c0bcfe69265aabec378190dbe36e9903dd2986c0c17093fbd24901d1efc
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
