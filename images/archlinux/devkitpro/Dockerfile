ARG FROM
FROM $FROM

RUN sudo pacman-key --init && \
    sudo pacman-key --recv BC26F752D25B92CE272E0F44F7FD5492264BB9D0 --keyserver keyserver.ubuntu.com && \
    sudo pacman-key --lsign BC26F752D25B92CE272E0F44F7FD5492264BB9D0 && \
    sudo pacman -U --noconfirm https://devkitpro.eeems.codes/devkitpro-keyring.pkg.tar.xz && \
    echo '[dkp-libs]' | sudo tee -a /etc/pacman.conf && \
    echo 'Server = https://devkitpro.eeems.codes/packages' | sudo tee -a /etc/pacman.conf && \
    echo '[dkp-linux]' | sudo tee -a /etc/pacman.conf && \
    echo 'Server = https://devkitpro.eeems.codes/packages/linux/$arch/' | sudo tee -a /etc/pacman.conf && \
    yay -Syu --noconfirm && \
    yay -Scc --noconfirm && \
    sudo paccache -rk 0
