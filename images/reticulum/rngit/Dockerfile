#syntax=docker/dockerfile:1.4
ARG FROM
FROM $FROM

RUN <<EOT
  set -e
  apk add --no-cache git bash
  pip install --root-user-action=ignore git-remote-rns[web]
EOT

COPY entrypoint.sh /entrypoint

ENTRYPOINT [ "/entrypoint" ]
