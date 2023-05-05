FROM eeems/remarkable-toolchain:base

RUN curl https://ipfs.eeems.website/ipfs/QmZmt4UtvyLLA8mLde6WspqvhMAKjzfvJW91R3bEja6y3A -o install-toolchain.sh && \
  echo "6299955721bcd9bef92a87ad3cfe4d31df8e2da95b0c4b2cdded4431aa6748b0  install-toolchain.sh" | sha256sum --check && \
  chmod +x install-toolchain.sh && \
  ./install-toolchain.sh -y && \
  rm install-toolchain.sh
