FROM eeems/remarkable-toolchain:base

RUN <<EOT
  for i in 1 2 3 4 5; do
    if curl -L -o install-toolchain.sh https://ipfs.eeems.website/ipfs/QmUVLbq949yAyqWSepzH7S1415kLFdLuR7qnNN7K6yX9Hv; then
      break
    fi
    sleep $((i*3))
  done
  echo "314d535ee8dfc7f7811969cd0c16c718e2f5caef6b74a64d18e6b0c97a253381  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
