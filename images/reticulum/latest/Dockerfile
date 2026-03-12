#syntax=docker/dockerfile:1.4
FROM python:3.14-alpine3.23

COPY --link update /usr/local/bin/update

RUN <<EOT
  set -e
  update
  pip install --root-user-action=ignore \
    rns \
    lxmf
  ln -s /config /root/.reticulum
EOT

COPY --link checkupdates /usr/bin/checkupdates

ENTRYPOINT ["/usr/local/bin/rnsd", "--config=/config"]
