FROM eeems/remarkable-toolchain:base

RUN <<EOT
  for i in 1 2 3 4 5; do delay=$((i*3)); curl -L -o install-toolchain.sh https://ipfs.eeems.website/ipfs/Qmdw66tZo2ZPRqicK4dtiUUskdHnDFZNpRAKBS5iYKKDTw && break || sleep $delay; done
  echo "1a9a5b4f9bebb6798f890ad91bdba0eddc11e8afee18d5d79e40da193e66411f  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
