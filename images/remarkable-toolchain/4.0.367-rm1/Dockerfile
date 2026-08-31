FROM eeems/remarkable-toolchain:base

RUN <<EOT
  for i in 1 2 3 4 5; do
    if curl -L -o install-toolchain.sh https://ipfs.eeems.website/ipfs/QmRS3fpSX9oeSZtEFhMs98XXdCKbLcByUYgeJU13dviskm; then
      break
    fi
    sleep $((i*3))
  done
  echo "43e9fb449b6e50fdff6b6110ea8fff167049b829628641537cb41738bd710eeb  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
