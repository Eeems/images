FROM registry.eeems.codes/archlinux:base-devel

# Force update on 2022-10-29

RUN useradd -m notroot

RUN echo "notroot ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/notroot

USER notroot
WORKDIR /home/notroot

RUN mkdir .gnupg && \
    chmod 700 .gnupg && \
    touch .gnupg/gpg.conf && \
    chmod 600 .gnupg/gpg.conf && \
    echo "keyserver-options auto-key-retrieve" > .gnupg/gpg.conf

RUN sudo pacman-key --recv A64228CCD26972801C2CE6E3EC931EA46980BA1B --keyserver keyserver.ubuntu.com && \
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
    sudo rm -R /var/lib/pacman/sync && \
    sudo pacman -Sy && \
    sudo paccache -rk 0

RUN sudo pacman -Su --noconfirm && sudo pacman -Scc --noconfirm
RUN sudo pacman -S --noconfirm yay namcap git rsync openssh clang llvm && sudo pacman -Scc
RUN yay -S --noconfirm checkupdates+aur chronic && sudo pacman -Scc

WORKDIR /pkg
