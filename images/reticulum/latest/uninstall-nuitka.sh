#!/bin/sh
set -e
pip uninstall --yes --root-user-action=ignore nuitka
rm -rf \
  /root/.cache \
  /root/.rustup
apk del --no-cache \
  musl-dev \
  python3-dev \
  build-base \
  g++ \
  gcc
