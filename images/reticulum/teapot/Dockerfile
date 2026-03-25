#syntax=docker/dockerfile:1.4
ARG FROM
FROM $FROM

RUN <<EOT
  set -e
  apk add --no-cache \
    py3-jinja2 \
    py3-schedule \
    py3-requests \
    py3-mistune \
    rust
  pip install --root-user-action=ignore html-to-markdown
  apk del --no-cache rust
EOT

RUN --mount=type=bind,source=config.py,destination=/config.py  <<EOT
  set -e
  apk add --no-cache git
  git clone https://github.com/haisul7/teapot.git /src
  cd src
  git submodule init
  git submodule update
  apk del --no-cache git
  apk add --no-cache rust
  mkdir tmp
  cp pyproject.toml tmp/
  cd tmp
  pip install --root-user-action=ignore \
    ../modules/html2mu \
    beautifulsoup4 \
    .
  pip uninstall --yes --root-user-action=ignore html2mu
  cd ..
  apk del --no-cache rust
  cp /config.py .
  mv modules/html2mu .
  sed -i "s|templates_dir='pages'|templates_dir=PAGES_DIRECTORY|" main.py
  sed -i 's|from config import |from config import PAGES_DIRECTORY,|' main.py
  sed -i 's|app.run\(\)|dst.announce(ANNOUNCE_NAME.encode("utf-8"));app.run()|' main.py
  sed -i 's|modules\.html2mu|html2mu|' main.py
  sed -i 's|from src\.|from .src.|' html2mu/*.py
  sed -i 's|from micron import|from .micron import|' html2mu/*/*.py
  sed -i 's|from escape import|from .src.escape import|' html2mu/*.py
  sed -i 's|from escape import|from .escape import|' html2mu/*/*.py
  mv modules/nomadapi .
  mv pages /usr/local/share/teapot
  sed -i 's|modules.nomadapi|nomadapi|' \
    main.py \
    nomadapi/*.py \
    nomadapi/*/*.py
  nuitka --mode=accelerated \
    --include-package=html2mu \
    --include-package-data=html2mu \
    --include-package=nomadapi \
    --include-package-data=nomadapi \
    --include-module=config \
    main.py
  mv ./main.bin /usr/local/bin/teapot
  cd tmp
  pip uninstall --yes --root-user-action=ignore teapot
  cd
  rm -rf /src
EOT

COPY entrypoint.sh /entrypoint

ENTRYPOINT [ "/entrypoint" ]
