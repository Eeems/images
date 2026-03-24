#!/bin/sh
set -e
/setup
if [ $# -ne 0 ]; then
  exec "$@"
fi
exec nomadnet \
  --daemon \
  --config=/config
