#!/bin/sh
set -e
/setup
if [ $# -ne 0 ]; then
  exec '$@"'
fi
exec lxmd \
  --config=/config \
  --rnsconfig=/config \
  --verbose \
  --propagation-node
