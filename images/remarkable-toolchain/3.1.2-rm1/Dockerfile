FROM eeems/remarkable-toolchain:base

RUN <<EOT
  for i in 1 2 3 4 5; do
    if curl -L -o install-toolchain.sh https://ipfs.eeems.website/ipfs/Qmbp5gkWAUr7DqVM6CGJm9U1qKHeeaz1QtYsQENE6PEgzQ; then
      break
    fi
    sleep $((i*3))
  done
  echo "da75ebb3451f5a2fd0e05eda6163f397551404200801fc7198e3e6f9cc8f710d  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
