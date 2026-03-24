#syntax=docker/dockerfile:1.4
ARG FROM
FROM $FROM

RUN  <<EOT
  set -e
  mkdir /src
  cd src
  pip install --root-user-action=ignore nomadnet
  echo "import nomadnet.ui as m;f=open(m.__file__, 'a');f.write(f'\n__all__ = {m.__all__}\n')" | python -u
  echo "import nomadnet.ui.textui as m;f=open(m.__file__, 'a');f.write(f'\n__all__ = {m.__all__}\n')" | python -u
  echo "from nomadnet.nomadnet import main; main()" > main.py
  python main.py --help
  nuitka --mode=accelerated \
    --include-package=nomadnet \
    --include-package-data=nomadnet \
    main.py
  ./main.bin --help
  pip uninstall --yes --root-user-action=ignore nomadnet
  mv ./main.bin /usr/local/bin/nomadnet
  cd
  rm -rf /src
  nomadnet --help
EOT

COPY entrypoint.sh /entrypoint

ENTRYPOINT [ "/entrypoint" ]
