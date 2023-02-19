FROM archlinux:base-devel

RUN useradd -m notroot

RUN echo "notroot ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/notroot

USER notroot
WORKDIR /home/notroot

RUN sudo pacman-key --init
RUN sudo pacman -Syu --noconfirm && \
    sudo pacman -S --needed --noconfirm git base-devel pacman-contrib && \
    git clone https://aur.archlinux.org/yay-bin.git --depth=1 && \
    cd yay-bin && \
    makepkg -si --noconfirm && \
    cd .. && \
    rm -rf yay-bin && \
    sudo pacman -Scc --noconfirm && \
    sudo paccache -rk 0
