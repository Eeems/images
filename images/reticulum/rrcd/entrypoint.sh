#!/bin/sh
set -e
/setup
if [ $# -ne 0 ]; then
  exec "$@"
fi
exec rrcd \
  --config="$RNS_CONFIG_PATH" \
  --identity="$RNS_CONFIG_PATH"/hub_identity \
  --room-registry="$RNS_CONFIG_PATH"/rooms.toml \
  --hub-name="${RRCD_HUB_NAME:-RRC}"
