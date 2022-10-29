ARG FROM
FROM $FROM

RUN yay -Syu --noconfirm && sudo paccache -rk 0
RUN yay -S --noconfirm wayland git make && sudo paccache -rk 0
