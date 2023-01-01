ARG FROM
FROM $FROM

RUN yay -Syu --noconfirm && sudo paccache -rk 0
RUN yay -S --noconfirm gst-plugins-bad gtk3 libmspack libnotify webkitgtk-bin cppunit git glu && sudo paccache -rk 0
RUN yay -S --noconfirm wxgtk3 wxgtk-common wxgtk2 && sudo paccache -rk 0
