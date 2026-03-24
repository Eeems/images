#!/bin/ash
set -e

export RNS_CONFIG_PATH="${RNS_CONFIG_PATH:-/config}"
export RNS_HOST="${RNS_HOST:-reticulum}"
export RNS_PORT="${RNS_PORT:-4242}"

config=$(
  cat <<EOF
[reticulum]
  enable_transport = False
  share_instance = Yes

[logging]
  loglevel = 4

[interfaces]
  [[Default Interface]]
    type = AutoInterface
    enabled = False

  [[Local]]
    type = BackboneInterface
    enabled = Yes
    remote = $RNS_HOST
    target_port = $RNS_PORT
EOF
)
if [ ! -d "$RNS_CONFIG_PATH" ]; then
  mkdir -p "$RNS_CONFIG_PATH"
fi
if [ ! -f "$RNS_CONFIG_PATH"/config ]; then
  echo "$config" >"$RNS_CONFIG_PATH"/config
fi
