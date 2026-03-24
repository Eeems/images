#!/bin/ash
set -e
source /setup
export RRCD_HUB_NAME="${RRCD_HUB_NAME:-RRC}"
if [ $# -ne 0 ]; then
  exec "$@"
fi
echo "RNS_CONFIG_PATH: $RNS_CONFIG_PATH"
echo "RRCD_HUB_NAME: $RRCD_HUB_NAME"
mkdir -p "$RNS_CONFIG_PATH"/rrcd
exec rrcd \
  --config="$RNS_CONFIG_PATH"/rrcd/config \
  --configdir="$RNS_CONFIG_PATH" \
  --identity="$RNS_CONFIG_PATH"/hub_identity \
  --room-registry="$RNS_CONFIG_PATH"/rrcd/rooms.toml \
  --hub-name="${RRCD_HUB_NAME}"
