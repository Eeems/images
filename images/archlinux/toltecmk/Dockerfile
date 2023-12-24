#syntax=docker/dockerfile:1.4
ARG FROM
FROM $FROM

RUN <<EOT
    set -ex
    yay -Syu --noconfirm
    yay -S --noconfirm python python-pip python-virtualenv ccache scons
    yay -Scc --noconfirm
    sudo paccache -rk 0
EOT
