#syntax=docker/dockerfile:1.4
FROM eeems/archlinux:base-devel

RUN <<EOT
    sudo reflector --latest 5 --sort rate --save /etc/pacman.d/mirrorlist
    mkdir .gnupg
    chmod 700 .gnupg
    touch .gnupg/gpg.conf
    chmod 600 .gnupg/gpg.conf
    echo "keyserver-options auto-key-retrieve" > .gnupg/gpg.conf
    sudo pacman-key --recv A64228CCD26972801C2CE6E3EC931EA46980BA1B --keyserver keyserver.ubuntu.com
    sudo pacman-key --lsign A64228CCD26972801C2CE6E3EC931EA46980BA1B
    sudo sed -i 's|^\(SyncFirst    =.*\)$|\1 eeems-keyring|' /etc/pacman.conf
    sudo sed -i 's|^\#\(ParallelDownloads = .*\)$|\1|' /etc/pacman.conf
    echo '[eeems-calc]' | sudo tee -a /etc/pacman.conf
    echo 'Server = https://repo.eeems.website/$repo' | sudo tee -a /etc/pacman.conf
    echo 'Server = https://repo.eeems.codes/$repo' | sudo tee -a /etc/pacman.conf
    echo '[eeems-linux]' | sudo tee -a /etc/pacman.conf
    echo 'Server = https://repo.eeems.website/$repo' | sudo tee -a /etc/pacman.conf
    echo 'Server = https://repo.eeems.codes/$repo' | sudo tee -a /etc/pacman.conf
    echo '[eeems-multilib]' | sudo tee -a /etc/pacman.conf
    echo 'Server = https://repo.eeems.website/$repo' | sudo tee -a /etc/pacman.conf
    echo 'Server = https://repo.eeems.codes/$repo' | sudo tee -a /etc/pacman.conf
    echo '[eeems-system76]' | sudo tee -a /etc/pacman.conf
    echo 'Server = https://repo.eeems.website/$repo' | sudo tee -a /etc/pacman.conf
    echo 'Server = https://repo.eeems.codes/$repo' | sudo tee -a /etc/pacman.conf
    echo '[multilib]' | sudo tee -a /etc/pacman.conf
    echo 'Include = /etc/pacman.d/mirrorlist' | sudo tee -a /etc/pacman.conf
    sudo rm -R /var/lib/pacman/sync
    yay -Syu --noconfirm
    yay -S --noconfirm eeems-keyring namcap rsync openssh clang llvm
    yay -S --noconfirm checkupdates-with-aur chronic
    yay -Scc --noconfirm
    sudo paccache -rk 0
EOT

WORKDIR /pkg
