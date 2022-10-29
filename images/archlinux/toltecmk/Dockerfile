ARG FROM
FROM $FROM

RUN yay -Syu --noconfirm && sudo paccache -rk 0
RUN yay -S --noconfirm python python-pip python-virtualenv ccache scons && sudo paccache -rk 0
