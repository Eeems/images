FROM eeems/remarkable-toolchain:base

RUN curl https://ipfs.eeems.website/ipfs/Qmdkdeh3bodwDLM9YvPrMoAi6dFYDDCodAnHvjG5voZxiC -o install-toolchain.sh && \
  echo "b44fef4e7c7abe1f6b08a1d3b552ee8122427ef85e7edea912a75a76edd910df  install-toolchain.sh" | sha256sum --check && \
  chmod +x install-toolchain.sh && \
  ./install-toolchain.sh -y && \
  rm install-toolchain.sh
