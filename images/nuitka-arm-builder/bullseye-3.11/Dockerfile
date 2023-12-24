#syntax=docker/dockerfile:1.4
FROM eeems/nuitka-arm-builder:bullseye-base

ARG PYTHON=3.11
RUN <<EOT
  pyenv install "$PYTHON"
  pyenv exec "$PYTHON" python -m venv /opt/lib/nuitka
  source /opt/lib/nuitka/bin/activate
  pip install \
    --extra-index-url https://wheels.eeems.codes/ \
    nuitka
EOT
