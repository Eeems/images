#!/bin/bash
pyenv update
pyenv install "$1"
lib_path="$(pyenv prefix "$1")/lib"
# Hack to get --static-libpython=yes to work for nuitka
ln -s \
  "${lib_path}/python${1}/config-${1}-$(gcc -dumpmachine)/libpython${1}.a" \
  "${lib_path}/libpython${1}.a"
pyenv global "$1"
pyenv exec python -m venv /opt/lib/nuitka
source /opt/lib/nuitka/bin/activate
pip install \
  --extra-index-url https://wheels.eeems.codes/ \
  nuitka
