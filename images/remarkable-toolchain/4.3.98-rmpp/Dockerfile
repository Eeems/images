FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://storage.googleapis.com/remarkable-codex-toolchain/3.17.0.72/ferrari/meta-toolchain-remarkable-4.3.98-ferrari-public-x86_64-toolchain.sh -o install-toolchain.sh
  echo "bb529186bdbbbe1460d42c7f2252e2d2f602f7b1af25d0c208306f9f110fb224  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
