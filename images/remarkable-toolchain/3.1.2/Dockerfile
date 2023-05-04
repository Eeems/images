FROM eeems/remarkable-toolchain:base

RUN curl https://cloudflare-ipfs.com/ipfs/QmU5H2Gmr9xqHAWAsFyWzWBpAHe7oWF6WBfYbK752H3CCM -o install-toolchain.sh && \
  chmod +x install-toolchain.sh && \
  ./install-toolchain.sh -y -d /opt/codex/3.1.2/ && \
  rm install-toolchain.sh
