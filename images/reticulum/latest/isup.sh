#!/bin/sh
set -e
[ $(rnstatus -j | jq -r '.interfaces.[] | select(.name != "Shared Instance[rns/default]" and .status) | .name' | wc -l) -gt 0 ]
