FROM archlinux:base-devel

RUN sudo pacman-key --init
RUN sudo pacman -Syu --noconfirm && \
    sudo pacman -S --noconfirm pacman-contrib && \
    sudo paccache -rk 0
