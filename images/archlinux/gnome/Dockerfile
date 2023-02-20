ARG FROM
FROM $FROM

RUN yay -Syu --noconfirm && \
    yay -S --noconfirm gnome-shell && \
    yay -Scc --noconfirm && \
    sudo paccache -rk 0
