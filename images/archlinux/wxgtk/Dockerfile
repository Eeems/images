ARG FROM
FROM $FROM

RUN yay -Syu --noconfirm && sudo paccache -rk 0
RUN yay -S --noconfirm gst-plugins-bad gtk3 libmspack libnotify webkitgtk-bin cppunit git glu wxgtk-git wxgtk-common && \
    sudo paccache -rk 0
