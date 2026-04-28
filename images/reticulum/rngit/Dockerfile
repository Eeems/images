#syntax=docker/dockerfile:1.4
ARG FROM
FROM $FROM

RUN <<EOT
  set -e
  rm -f \
    /usr/local/bin/rngit \
    /usr/local/bin/git-remote-rns
  pip install \
    --root-user-action=ignore \
    git-remote-rns[web]
  git-remote-rns --help
  rngit --help
  apk add --no-cache git bash
EOT

COPY entrypoint.sh /entrypoint

ENTRYPOINT [ "/entrypoint" ]
