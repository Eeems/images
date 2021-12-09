FROM archlinux:base-devel

RUN useradd -m notroot

RUN echo "notroot ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/notroot

USER notroot
WORKDIR /home/notroot

RUN mkdir .gnupg && \
    chmod 700 .gnupg && \
    touch .gnupg/gpg.conf && \
    chmod 600 .gnupg/gpg.conf && \
    echo "keyserver-options auto-key-retrieve" > .gnupg/gpg.conf

RUN sudo pacman-key --init && \
    sudo pacman-key --recv A64228CCD26972801C2CE6E3EC931EA46980BA1B --keyserver keyserver.ubuntu.com && \
    sudo pacman-key --lsign A64228CCD26972801C2CE6E3EC931EA46980BA1B && \
    sudo curl --header 'Host: repo.eeems.codes' https://repo.eeems.codes/eeems-keyring.tar.zst --output eeems-keyring.tar.zst && \
    sudo pacman -U --noconfirm ./eeems-keyring.tar.zst && \
    sudo rm eeems-keyring.tar.zst && \
    echo '[eeems-3ds]' | sudo tee -a /etc/pacman.conf && \
    echo 'Server = https://repo.eeems.website/$repo' | sudo tee -a /etc/pacman.conf && \
    echo 'Server = https://repo.eeems.codes/$repo' | sudo tee -a /etc/pacman.conf && \
    echo '[eeems-linux]' | sudo tee -a /etc/pacman.conf && \
    echo 'Server = https://repo.eeems.website/$repo' | sudo tee -a /etc/pacman.conf && \
    echo 'Server = https://repo.eeems.codes/$repo' | sudo tee -a /etc/pacman.conf && \
    echo '[eeems-multilib]' | sudo tee -a /etc/pacman.conf && \
    echo 'Server = https://repo.eeems.website/$repo' | sudo tee -a /etc/pacman.conf && \
    echo 'Server = https://repo.eeems.codes/$repo' | sudo tee -a /etc/pacman.conf && \
    echo '[multilib]' | sudo tee -a /etc/pacman.conf && \
    echo 'Include = /etc/pacman.d/mirrorlist' | sudo tee -a /etc/pacman.conf

RUN sudo pacman -Syu --noconfirm && \
    sudo pacman -S --noconfirm yay namcap git rsync openssh clang llvm && \
    yay -S --noconfirm checkupdates+aur

WORKDIR /pkg