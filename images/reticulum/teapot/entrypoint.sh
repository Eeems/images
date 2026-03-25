#!/bin/ash
set -e
source /setup
if [ $# -ne 0 ]; then
  exec "$@"
fi
mkdir -p "$RNS_CONFIG_PATH"/storage
exec -a teapot teapot
