ARG FROM
FROM $FROM

RUN yay -Syu --noconfirm && sudo pacman -Scc
RUN yay -S --noconfirm wayland git make && sudo pacman -Scc
