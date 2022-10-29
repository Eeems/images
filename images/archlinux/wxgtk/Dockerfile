ARG FROM
FROM $FROM

RUN yay -Syu --noconfirm && sudo pacman -Scc
RUN yay -S --noconfirm gst-plugins-bad gtk3 libmspack libnotify webkitgtk-bin cppunit git glu && sudo pacman -Scc
RUN yay -S --noconfirm wxgtk-git && sudo pacman -Scc
