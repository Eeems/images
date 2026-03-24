#syntax=docker/dockerfile:1.4
ARG FROM
FROM $FROM

RUN <<EOT
  set -e
  apk add --no-cache git
  git clone https://github.com/liamcottle/lxmf-echobot /src
  apk del git
  cd /src
  pip install --root-user-action=ignore -r requirements.txt
  python echobot.py --help
  nuitka --mode=accelerated echobot.py
  ./echobot.bin --help
  mv echobot.bin /usr/local/bin/echobot
  echobot --help
  cd
  rm -rf /src
EOT

WORKDIR /app

COPY entrypoint.sh /entrypoint

ENTRYPOINT [ "/entrypoint" ]
