#!/bin/sh
set -e
count=$(
  rnstatus -j |
    jq -r '.interfaces.[] | select(.name != "Shared Instance[rns/default]" and .status and .parent_interface_hash == null)' |
    wc -l
)
[ "$count" -gt 0 ]
