#!/bin/ash
set -e
export RNS_CONFIG_PATH=${RNS_CONFIG_PATH:-/config}
if [ $# -ne 0 ]; then
  exec "$@"
fi
if [[ $- == *i* ]]; then
  exec /usr/local/bin/rnsd --interactive
else
  exec /usr/local/bin/rnsd
fi
