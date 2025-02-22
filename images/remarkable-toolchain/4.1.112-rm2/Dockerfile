FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://storage.googleapis.com/remarkable-codex-toolchain/3.15.4.2/remarkable-platform-image-4.1.112-rm2-public-x86_64-toolchain.sh -o install-toolchain.sh
  echo "859fe79621e2dc3acd3b57cf407c18bdf0eb992079d72f5bcf3c45b6f9cfe56b  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
