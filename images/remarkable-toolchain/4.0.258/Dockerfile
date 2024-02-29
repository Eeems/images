FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://ipfs.eeems.website/ipfs/QmeFkFUgPsVGKHNvKo87nYGLp8tR8HujeVFTB8JB4TqbS6 -o install-toolchain.sh
  echo "44717d3e14327b87bfd66fc61c3a7d585feafc91b639e43e31fbf3e1557f6bd1  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
