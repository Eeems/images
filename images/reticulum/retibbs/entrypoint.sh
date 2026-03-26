#!/bin/ash
set -e
source /setup
if [ $# -ne 0 ]; then
  exec "$@"
fi
mkdir -p /data
if [ ! -d /data/themes ]; then
  cp -r /usr/share/retibbs/themes /data/
fi
if [ ! -f "$RNS_CONFIG_PATH"/server_config.json ]; then
  cp -r /usr/share/retibbs/server_config.dist "$RNS_CONFIG_PATH"/server_config.json
fi
cd /data
exec -a retibbs \
  retibbs \
  --reticulum-config="$RNS_CONFIG_PATH" \
  --identity="$RNS_CONFIG_PATH"/identity \
  --config-file="$RNS_CONFIG_PATH"/server_config.json \
  < <(sleep infinity)
