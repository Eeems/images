FROM eeems/remarkable-toolchain:base

RUN <<EOT
  curl https://ipfs.eeems.website/ipfs/Qmdw66tZo2ZPRqicK4dtiUUskdHnDFZNpRAKBS5iYKKDTw -o install-toolchain.sh
  echo "1a9a5b4f9bebb6798f890ad91bdba0eddc11e8afee18d5d79e40da193e66411f  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
