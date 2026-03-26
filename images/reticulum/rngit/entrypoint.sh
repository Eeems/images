#!/bin/bash
set -e
source /setup
if [ $# -ne 0 ]; then
  exec "$@"
fi
REPO_PATH=${REPO_PATH:-/data}
echo "RNS_CONFIG_PATH: $RNS_CONFIG_PATH"
echo "REPO_PATH: $REPO_PATH"
ALLOW_ALL_READ=${ALLOW_ALL_READ:-0}
flags=()
f() {
  flags+=("--allow-$1=$2")
}
if [[ "$ALLOW_ALL_READ" == "1" ]]; then
  flags+=(--allow-all-read)
elif [[ "$ALLOW_READ" != "" ]]; then
  while read -r i; do
    f read "$i"
  done < <(echo "$ALLOW_READ" | xargs)
fi
if [[ "$ALLOW_WRITE" != "" ]]; then
  while read -r i; do
    f write "$i"
  done < <(echo "$ALLOW_WRITE" | xargs)
fi
if [[ "$ANNOUNCE_INTERVAL" != "" ]]; then
  flags+=("--announce-interval=$ANNOUNCE_INTERVAL")
fi
if [[ "$ANNOUNCE_NAME" != "" ]]; then
  flags+=("--name=$ANNOUNCE_NAME")
fi
mkdir -p "$RNS_CONFIG_PATH"
mkdir -p "$REPO_PATH"
exec -a rngit \
  rngit "${flags[@]}" --verbose "$REPO_PATH"
