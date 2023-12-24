#syntax=docker/dockerfile:1.4
ARG FROM
FROM $FROM

RUN <<EOT
    yay -Syu --noconfirm
    yay -S --noconfirm gnome-shell
    yay -Scc --noconfirm
    sudo paccache -rk 0
EOT
