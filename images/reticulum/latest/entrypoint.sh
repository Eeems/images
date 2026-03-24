#!/bin/ash
set -e
source /setup
if [ $# -ne 0 ]; then
  exec "$@"
fi
mkdir -p "$RNS_CONFIG_PATH"
if [[ $- == *i* ]]; then
  exec /usr/local/bin/rnsd --interactive
else
  exec /usr/local/bin/rnsd
fi
