FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://ipfs.eeems.website/ipfs/Qmbp5gkWAUr7DqVM6CGJm9U1qKHeeaz1QtYsQENE6PEgzQ -o install-toolchain.sh
  echo "da75ebb3451f5a2fd0e05eda6163f397551404200801fc7198e3e6f9cc8f710d  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
