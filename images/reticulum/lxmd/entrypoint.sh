#!/bin/ash
set -e
source /setup
if [ $# -ne 0 ]; then
  exec "$@"
fi
exec lxmd \
  --config="$RNS_CONFIG_PATH"/lxmf \
  --rnsconfig"=$RNS_CONFIG_PATH" \
  --verbose \
  --propagation-node
