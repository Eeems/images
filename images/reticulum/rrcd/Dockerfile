#syntax=docker/dockerfile:1.4
ARG FROM
FROM $FROM

RUN <<EOT
  set -e
  apk add --no-cache git
  pip install --root-user-action=ignore \
    git+https://github.com/kc1awv/rrcd.git
  rrcd --help
  apk del git
EOT

COPY entrypoint.sh /entrypoint

ENTRYPOINT [ "/entrypoint" ]
