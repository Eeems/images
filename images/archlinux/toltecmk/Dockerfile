ARG FROM
FROM $FROM

RUN yay -Syu --noconfirm && \
    yay -S --noconfirm python python-pip python-virtualenv ccache scons && \
    yay -Scc --noconfirm && \
    sudo paccache -rk 0
