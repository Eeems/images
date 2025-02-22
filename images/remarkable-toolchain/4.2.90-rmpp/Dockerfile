FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://storage.googleapis.com/remarkable-codex-toolchain/3.16.2.3/ferrari/meta-toolchain-remarkable-4.2.90-ferrari-public-x86_64-toolchain.sh -o install-toolchain.sh
  echo "cf41ac28d9f37371347e312a2a81d8707c64a1c1768ced29e91abf91b7ea3ecb  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
