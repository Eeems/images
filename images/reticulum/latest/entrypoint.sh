#!/bin/ash
set -e
export IS_HOST=1
source /setup
if [ $# -ne 0 ]; then
  exec "$@"
fi
mkdir -p "$RNS_CONFIG_PATH"
flags=
if [ -t 0 ]; then
  flags=--interactive
fi
exec -a rnsd \
  /usr/local/bin/rnsd \
  $flags \
  -vvvv
