FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://storage.googleapis.com/remarkable-codex-toolchain/3.17.0.72/rm1/remarkable-platform-image-4.3.98-rm1-public-x86_64-toolchain.sh -o install-toolchain.sh
  echo "6a16c57098a68b2be6b82b3c06cbf327d75b1a61259d668e2012fe561094a533  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
