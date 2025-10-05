#syntax=docker/dockerfile:1.4
FROM archlinux:base-devel

SHELL ["/bin/bash", "-exc"]

RUN <<EOT
    useradd -m notroot
    echo "notroot ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/notroot
    sed -i 's|#DisableSandbox|DisableSandbox|' /etc/pacman.conf
    sed -i 's|^DownloadUser|#DownloadUser|' /etc/pacman.conf
EOT

USER notroot
WORKDIR /home/notroot

RUN <<EOT
    sudo pacman-key --init
    sudo pacman -Syu --noconfirm
    sudo pacman -S --needed --noconfirm git base-devel pacman-contrib reflector rsync
    # git clone https://aur.archlinux.org/yay.git --depth=1
    git clone --branch "yay" --single-branch https://github.com/archlinux/aur.git yay
    cd yay
    makepkg -si --noconfirm
    yay --version
    cd ..
    rm -rf yay
    sudo pacman -Scc --noconfirm
    sudo paccache -rk 0
EOT

COPY --link update /usr/local/bin/update
