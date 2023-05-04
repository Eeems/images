FROM remarkable-toolchain:base

RUN curl https://web.archive.org/web/20201112014719if_/https://remarkable.engineering/deploy/sdk/poky-glibc-x86_64-meta-toolchain-qt5-cortexa9hf-neon-toolchain-2.1.3.sh -o install-toolchain.sh && \
  chmod +x install-toolchain.sh && \
  ./install-toolchain.sh -y -d /opt/codex/2.1.3
