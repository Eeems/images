FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://ipfs.eeems.website/ipfs/QmUZ6bunzbS1GDjHAyaz4zLGHg4kddE8oqpyG8uc4epyW3 -o install-toolchain.sh
  echo "07cb35950a76b8b3d368252f633be5b7fd51540256e891941f6f409f158f4fc1  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
