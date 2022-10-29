ARG FROM
FROM $FROM

RUN yay -Syu --noconfirm && sudo pacman -Scc
RUN yay -S --noconfirm python python-pip python-virtualenv ccache scons && sudo pacman -Scc
