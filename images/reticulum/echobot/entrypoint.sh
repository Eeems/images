#!/bin/ash
set -e
source /setup
export ECHOBOT_IDENTITY_PATH="${ECHOBOT_IDENTITY_PATH:-$RNS_CONFIG_PATH/echobot_identity}"
export ECHOBOT_NAME="${ECHOBOT_NAME:-Echo Bot}"
export ECHOBOT_ANNOUNCE_INTERVAL="${ECHOBOT_ANNOUNCE_INTERVAL:-360}"
cd /app
if [ $# -ne 0 ]; then
  exec "$@"
fi
exec -a echobot \
  echobot \
  --identity-file "$ECHOBOT_IDENTITY_PATH" \
  --display-name "$ECHOBOT_NAME" \
  --announce-interval-seconds "$ECHOBOT_ANNOUNCE_INTERVAL"
