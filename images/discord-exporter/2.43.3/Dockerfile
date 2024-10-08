#syntax=docker/dockerfile:1.4
FROM alpine:latest

RUN <<EOT
  mkdir -p /dce
  cd /dce
  apk add --no-cache python3 icu wget
  wget https://github.com/nulldg/DiscordChatExporterPlus/releases/download/2.43.3/DiscordChatExporterPlus.Cli.linux-musl-x64.zip
  unzip DiscordChatExporterPlus.Cli.linux-musl-x64.zip
  apk del --no-cache wget
  rm DiscordChatExporterPlus.Cli.linux-musl-x64.zip
EOT

COPY --link checkupdates /usr/bin/checkupdates
COPY --link update /usr/local/bin/update
COPY --link backup.py /usr/local/bin/backup.py

ENTRYPOINT ["/usr/local/bin/backup.py"]
