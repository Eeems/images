#!/bin/ash
set -e
/setup
if [ $# -ne 0 ]; then
  exec "$@"
fi
exec nomadnet \
  --daemon \
  --config="$RNS_CONFIG_PATH"/nomadnetwork
