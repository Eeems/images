FROM eeems/remarkable-toolchain:base

RUN <<EOT
  for i in 1 2 3 4 5; do
    if curl -L -o install-toolchain.sh https://ipfs.eeems.website/ipfs/Qmdw66tZo2ZPRqicK4dtiUUskdHnDFZNpRAKBS5iYKKDTw; then
      break
    fi
    sleep $((i*3))
  done
  echo "1a9a5b4f9bebb6798f890ad91bdba0eddc11e8afee18d5d79e40da193e66411f  install-toolchain.sh" | sha256sum --check
  chmod +x install-toolchain.sh
  ./install-toolchain.sh -y
  rm install-toolchain.sh
EOT
