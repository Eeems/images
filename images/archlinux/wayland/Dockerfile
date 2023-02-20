ARG FROM
FROM $FROM

RUN yay -Syu --noconfirm && \
    yay -S --noconfirm wayland && \
    yay -Scc --noconfirm && \
    sudo paccache -rk 0
