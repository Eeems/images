#!/bin/ash
set -e
export IS_HOST=1
source /setup
if [ $# -ne 0 ]; then
  exec "$@"
fi
mkdir -p "$RNS_CONFIG_PATH"
if [ -t 0 ]; then
  exec /usr/local/bin/rnsd --interactive
else
  exec /usr/local/bin/rnsd
fi
