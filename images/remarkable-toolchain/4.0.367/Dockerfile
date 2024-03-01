FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://ipfs.eeems.website/ipfs/QmRS3fpSX9oeSZtEFhMs98XXdCKbLcByUYgeJU13dviskm -o install-toolchain.sh
  echo "43e9fb449b6e50fdff6b6110ea8fff167049b829628641537cb41738bd710eeb  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
