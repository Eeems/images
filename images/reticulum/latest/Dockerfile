# syntax=docker/dockerfile:1
FROM python:3.14-alpine3.23

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

COPY setup.sh /setup
COPY entrypoint.sh /entrypoint
COPY checkupdates /usr/bin/checkupdates
COPY isup.sh /usr/bin/isup

EXPOSE 4242
ENTRYPOINT ["/entrypoint"]
HEALTHCHECK \
  --interval=5m \
  --timeout=3s \
  --start-interval=1s \
  --start-period=30s \
  CMD /usr/bin/isup
