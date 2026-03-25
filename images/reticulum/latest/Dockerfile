# syntax=docker/dockerfile:1
ARG PYTHON=3.14
ARG ALPINE=3.23
FROM python:${PYTHON}-alpine${ALPINE}

COPY update /usr/local/bin/update

RUN <<EOT
  set -e
  update
  pip install --root-user-action=ignore \
    rns \
    lxmf
  apk add --no-cache jq
  ln -s /config /root/.reticulum
EOT

ARG PYTHON
ENV PYTHONPATH=/usr/local/lib/python${PYTHON}/site-packages

COPY setup.sh /setup
COPY entrypoint.sh /entrypoint
COPY checkupdates /usr/bin/checkupdates
COPY isup.sh /usr/bin/isup
COPY nuitka.sh /usr/bin/nuitka

EXPOSE 4242
ENTRYPOINT ["/entrypoint"]
HEALTHCHECK \
  --interval=5m \
  --timeout=3s \
  --start-interval=1s \
  --start-period=30s \
  CMD /usr/bin/isup
