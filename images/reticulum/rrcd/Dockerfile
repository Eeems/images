#syntax=docker/dockerfile:1.4
ARG FROM
FROM $FROM

RUN pip install --root-user-action=ignore \
  git+https://github.com/kc1awv/rrcd.git

COPY entrypoint.sh /entrypoint

ENTRYPOINT [ "/entrypoint" ]
