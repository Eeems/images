#syntax=docker/dockerfile:1.4
ARG FROM
FROM $FROM

RUN  pip install --root-user-action=ignore \
  nomadnet

COPY entrypoint.sh /entrypoint

ENTRYPOINT [ "/entrypoint" ]
