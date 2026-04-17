#syntax=docker/dockerfile:1.4
ARG FROM
FROM $FROM

RUN <<EOT
  set -e
  install-nuitka
  apk add --no-cache gcc
  pip install \
    --root-user-action=ignore \
    --no-binary git-remote-rns \
    git-remote-rns[web]
  git-remote-rns --help
  rngit --help
  uninstall-nuitka
  apk add --no-cache git bash
EOT

COPY entrypoint.sh /entrypoint

ENTRYPOINT [ "/entrypoint" ]
