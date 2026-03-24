#!/bin/sh
set -e
/setup
cd /app
if [ $# -ne 0 ]; then
  exec "$@"
fi
exec python echobot.py \
  --identity-file "${ECHOBOT_IDENTITY_PATH:-$RNS_CONFIG_PATH/echobot_identity}" \
  --display-name "${ECHOBOT_NAME:-Echo Bot}" \
  --announce-interval-seconds "${ECHOBOT_ANNOUNCE_INTERVAL:-360}"
