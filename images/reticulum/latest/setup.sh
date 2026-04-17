#!/bin/ash
set -e
export PYTHONUNBUFFERED=1
export RNS_CONFIG_PATH="${RNS_CONFIG_PATH:-/config}"
export RNS_PORT="${RNS_PORT:-4242}"
if [[ "$IS_HOST" == "1" ]]; then
  host_line="listen_on = 0.0.0.0"
  port_line="port = $RNS_PORT"
  auto_enabled="yes"
  enable_transport="yes"
  discover_interfaces="yes"
else
  export RNS_HOST="${RNS_HOST:-rnsd}"
  host_line="remote = $RNS_HOST"
  port_line="target_port = $RNS_PORT"
  auto_enabled="no"
  enable_transport="no"
  discover_interfaces="no"
fi
config=$(
  cat <<EOF
[reticulum]
  enable_transport = $enable_transport
  share_instance = yes
  discover_interfaces = $discover_interfaces

[logging]
  loglevel = 4

[interfaces]
  [[Default Interface]]
    type = AutoInterface
    enabled = $auto_enabled

  [[Local]]
    type = BackboneInterface
    enabled = yes
    $host_line
    $port_line
EOF
)
if [ ! -d "$RNS_CONFIG_PATH" ]; then
  mkdir -p "$RNS_CONFIG_PATH"
fi
if [ ! -f "$RNS_CONFIG_PATH"/config ]; then
  echo "$config" >"$RNS_CONFIG_PATH"/config
fi
