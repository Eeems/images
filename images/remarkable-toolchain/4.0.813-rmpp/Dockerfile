FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://ipfs.eeems.website/ipfs/QmQpagE9boGRLDv2iUuY9huxFZepDqivgb9uAW5BEArN1C -o install-toolchain.sh
  echo "29e2cce4280dbde182937c9614681a59a14aca8a18e06957bf66f8aeb0f3b968  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
