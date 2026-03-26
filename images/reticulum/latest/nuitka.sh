#!/bin/ash
set -e
apk add --no-cache \
  musl-dev \
  python3-dev \
  build-base \
  g++
python -m venv --system-site-packages .venv
pip install --root-user-action=ignore nuitka
nuitka "$@"
if [[ "$NOCLEAN" != "1" ]]; then
  pip uninstall --yes --root-user-action=ignore nuitka
  rm -rf \
    .venv \
    /root/.cache \
    /root/.rustup
  apk del --no-cache \
    musl-dev \
    python3-dev \
    build-base \
    g++
fi
