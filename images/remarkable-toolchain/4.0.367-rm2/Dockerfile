FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://ipfs.eeems.website/ipfs/QmUVLbq949yAyqWSepzH7S1415kLFdLuR7qnNN7K6yX9Hv -o install-toolchain.sh
  echo "314d535ee8dfc7f7811969cd0c16c718e2f5caef6b74a64d18e6b0c97a253381  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
