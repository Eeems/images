FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://storage.googleapis.com/remarkable-codex-toolchain/3.17.0.72/rm2/remarkable-platform-image-4.3.98-rm2-public-x86_64-toolchain.sh -o install-toolchain.sh
  echo "f5dee95caef8794e34191d02711f23e739c3b481f5530f7d3cda52022ad32e13  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
