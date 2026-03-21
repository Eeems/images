#!/bin/sh
set -e
cd /app
exec python echobot.py \
  --identity-file "${ECHOBOT_IDENTITY_PATH:-/config/echobot_identity}" \
  --display-name "${ECHOBOT_NAME:-Echo Bot}" \
  --announce-interval-seconds "${ECHOBOT_ANNOUNCE_INTERVAL:-360}"
