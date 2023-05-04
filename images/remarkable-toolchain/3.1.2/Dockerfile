FROM remarkable-toolchain:base

RUN curl https://storage.googleapis.com/remarkable-codex-toolchain/codex-x86_64-cortexa7hf-neon-rm11x-toolchain-3.1.2.sh -o install-toolchain.sh && \
  chmod +x install-toolchain.sh && \
  ./install-toolchain.sh -y -d /opt/codex/3.1.2/
