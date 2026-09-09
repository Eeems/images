#syntax=docker/dockerfile:1.4
FROM eeems/remarkable-toolchain:base

ARG TARGETARCH

RUN <<EOT
  case $TARGETARCH in
    amd64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.28.0.172/remarkable-production-image-5.8.203-rm1-public-x86_64-toolchain.sh"
      checksum=4536b3d52098a559e3ae13f9a5a1780c2ff0c0c606ac1c100dd05775c67923e1
      ;;
    arm64)
      url="https://storage.googleapis.com/remarkable-codex-toolchain/3.28.0.172/remarkable-production-image-5.8.203-rm1-public-aarch64-toolchain.sh"
      checksum=a75dc1c515d2f80d353f1848ecdbe229431a89f28b108ab4d037538d75cc59ca
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
