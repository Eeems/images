FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl \
    https://storage.googleapis.com/remarkable-codex-toolchain/3.25.1.1/rm2/remarkable-production-image-5.5.125-rm2-public-x86_64-toolchain.sh \
    -o install-toolchain.sh
  echo "b308ba093bc7c3b297e81caca840c201afb733b30c8fcf9e5a8f1ae693248095  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
