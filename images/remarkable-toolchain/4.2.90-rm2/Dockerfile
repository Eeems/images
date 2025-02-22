FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://storage.googleapis.com/remarkable-codex-toolchain/3.16.2.3/rm2/remarkable-platform-image-4.2.90-rm2-public-x86_64-toolchain.sh -o install-toolchain.sh
  echo "21fd57140d07eb68a81b23c2d09fbdd27e92f1b44323eaff0747769319aec3e1  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
