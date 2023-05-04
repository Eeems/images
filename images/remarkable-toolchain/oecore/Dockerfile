FROM remarkable-toolchain:base

RUN curl https://web.archive.org/web/20200523214915if_/https://remarkable.engineering/oecore-x86_64-cortexa9hf-neon-toolchain-zero-gravitas-1.8-23.9.2019.sh -o install-toolchain.sh && \
  chmod +x install-toolchain.sh && \
  ./install-toolchain.sh -y -d /opt/oecore/
