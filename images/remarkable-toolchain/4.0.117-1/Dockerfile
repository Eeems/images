FROM eeems/remarkable-toolchain:base

RUN curl https://ipfs.eeems.website/ipfs/QmSDp52dwAoi4FTvHsZpjGuxLkLETTtVYu6kMdxQUiwJQu -o install-toolchain.sh && \
  echo "29779c80db2a025126d52faad88d553cadda09fff31fb4138a9df1d5b7e8a247  install-toolchain.sh" | sha256sum --check && \
  chmod +x install-toolchain.sh && \
  ./install-toolchain.sh -y && \
  rm install-toolchain.sh
