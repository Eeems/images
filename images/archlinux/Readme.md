[![Docker Pulls](https://img.shields.io/docker/pulls/eeems/archlinux.svg)](https://hub.docker.com/r/eeems/archlinux)

Images used to build packages for https://repo.eeems.codes/

You can find the source here: https://github.com/Eeems/images

base-devel
----------

Using the official archlinux:base-devel image with the following modifications:

- Setup to run as a non-root user (notroot) that has passwordless sudo access.
- Pacman is initialized and the following packages have been installed:
  - git
  - base-devel
  - pacman-contrib
  - yay-bin

latest
------

The following pacman repos have been added:
  - eeems-3ds
  - eeems-linux
  - eeems-multilib
  - multilib

The following packages have been installed:
 - namcap
 - rsync
 - openssh
 - clang
 - llvm
 - checkupdates+aur
 - chronic
 - eeems-keyring

devkitpro
---------

The following pacman repos have been added:
 - dkp-libs
 - dkp-linux

gnome
-----

The gnome-shell package has been installed.

rust
----

The rust package has been installed.

toltecmk
--------

The following packages have been nstalled:
 - python
 - python-pip
 - python-virtualenv
 - ccache
 - scons

wayland
-------

The wayland package has been installed.
