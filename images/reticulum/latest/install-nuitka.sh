#!/bin/sh
set -e
apk add --no-cache \
  musl-dev \
  python3-dev \
  build-base \
  g++ \
  gcc
pip install --root-user-action=ignore nuitka
