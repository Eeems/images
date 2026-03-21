#syntax=docker/dockerfile:1.4
ARG FROM
FROM $FROM

RUN <<EOT
  set -e
  apk add --no-cache git
  git clone https://github.com/liamcottle/lxmf-echobot /app
  apk del git
EOT

WORKDIR /app

RUN pip install --root-user-action=ignore \
  -r requirements.txt

COPY entrypoint.sh /entrypoint


ENTRYPOINT [ "/entrypoint" ]
