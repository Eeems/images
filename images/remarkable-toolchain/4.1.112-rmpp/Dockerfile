FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://storage.googleapis.com/remarkable-codex-toolchain/3.15.4.2/meta-toolchain-remarkable-4.1.112-ferrari-public-x86_64-toolchain.sh -o install-toolchain.sh
  echo "011a77c286d18ae1da9db6f8908749dda167725fbe75885c07c105779cc4a496  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
