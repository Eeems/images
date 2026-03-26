#syntax=docker/dockerfile:1.4
ARG FROM
FROM $FROM

RUN  <<EOT
  set -e
  apk add --no-cache git
  git clone https://github.com/kc1awv/RetiBBS.git /src
  apk del --no-cache git
  cd src
  apk add --no-cache \
    musl-dev \
    python3-dev \
    build-base \
    g++ \
    libffi-dev
  pip install --root-user-action=ignore \
      -r req.txt \
      flask
  apk del --no-cache \
    musl-dev \
    python3-dev \
    build-base \
    g++ \
    libffi-dev
  cd server
  python retibbs_server.py --help
  nuitka --mode=accelerated \
    --include-package=chat \
    --include-package=themes \
    --include-package=web \
    --include-package-data=web \
    --include-module=automatic_announcer \
    --include-module=boards_manager \
    --include-module=identity_manager \
    --include-module=lxmf_handler \
    --include-module=main_menu \
    --include-module=reply_handler \
    --include-module=theme_manager \
    --include-module=users_manager \
    --include-module=wsgi \
    retibbs_server.py
  mv ./retibbs_server.bin /usr/local/bin/retibbs
  mkdir -p /usr/share/retibbs/
  mv themes /usr/share/retibbs/
  mv server_config.dist /usr/share/retibbs/
  cd /usr/share/retibbs
  rm -rf /src
  retibbs --help
EOT

COPY entrypoint.sh /entrypoint

ENTRYPOINT [ "/entrypoint" ]
