FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://storage.googleapis.com/remarkable-codex-toolchain/3.16.2.3/rm1/remarkable-platform-image-4.2.90-rm1-public-x86_64-toolchain.sh -o install-toolchain.sh
  echo "86d354dd9b09b841b215d2cdc64fde9a87faf02a8d4d2247daa136caa28aec55  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
