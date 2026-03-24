#syntax=docker/dockerfile:1.4
FROM python:3.14-alpine3.23

COPY update /usr/local/bin/update

RUN <<EOT
  set -e
  update
  pip install --root-user-action=ignore \
    rns \
    lxmf
  ln -s /config /root/.reticulum
EOT

COPY setup.sh /setup
COPY entrypoint.sh /entrypoint
COPY checkupdates /usr/bin/checkupdates

ENTRYPOINT ["/entrypoint"]
