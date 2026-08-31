FROM eeems/remarkable-toolchain:base

RUN <<EOT
  for i in 1 2 3 4 5; do curl -L -o install-toolchain.sh https://ipfs.eeems.website/ipfs/QmU5H2Gmr9xqHAWAsFyWzWBpAHe7oWF6WBfYbK752H3CCM && break || sleep $((i*3)); done
  echo "0ed50b016021e4c541af30cd564c4edfd92a48a6b066065634148f3ccca87aae  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
