FROM eeems/remarkable-toolchain:base

RUN curl https://ipfs.eeems.website/ipfs/QmWD1Us3yTByABYNjP3rYhnZzYr3Lbp8roieBHLqAdt9J9 -o install-toolchain.sh && \
  echo "52c3bec1b3cd744d39b2865d6f41d2edfaf337ae053acd48ee995c863a3afcc3  install-toolchain.sh" | sha256sum --check && \
  chmod +x install-toolchain.sh && \
  ./install-toolchain.sh -y && \
  rm install-toolchain.sh
