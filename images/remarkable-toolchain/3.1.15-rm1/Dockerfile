FROM eeems/remarkable-toolchain:base

RUN <<EOT
  for i in 1 2 3 4 5; do
    if curl -L -o install-toolchain.sh https://ipfs.eeems.website/ipfs/QmUZ6bunzbS1GDjHAyaz4zLGHg4kddE8oqpyG8uc4epyW3; then
      break
    fi
    sleep $((i*3))
  done
  echo "07cb35950a76b8b3d368252f633be5b7fd51540256e891941f6f409f158f4fc1  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
