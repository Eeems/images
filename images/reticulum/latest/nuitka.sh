#!/bin/ash
set -e
install-nuitka
python -m nuitka "$@"
if [[ "$NOCLEAN" != "1" ]]; then
  uninstall-nuitka
fi
