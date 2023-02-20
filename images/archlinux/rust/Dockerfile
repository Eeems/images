ARG FROM
FROM $FROM

RUN yay -Syu --noconfirm && \
    yay -S --noconfirm rust && \
    yay -Scc --noconfirm && \
    sudo paccache -rk 0
