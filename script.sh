#!/bin/bash
sudo xbps-install -Suv
sudo xbps-install -Rs void-repo-nonfree 
sudo xbps-install curl wget git xz unzip zip nano vim gptfdisk xtools mtools mlocate ntfs-3g fuse-exfat bash-completion linux-headers gtksourceview4 ffmpeg mesa-vdpau mesa-vaapi htop
sudo xbps-install autoconf automake bison m4 make libtool flex meson ninja optipng sassc
sudo xbps-install xorg
sudo xbps-install gnome
sudo xbps-install gdm
sudo ln -s /etc/sv/gdm /var/service
sudo xbps-install -Rs xdg-desktop-portal xdg-desktop-portal-gtk xdg-user-dirs xdg-user-dirs-gtk xdg-utils
sudo xbps-install gnome-browser-connector
sudo xbps-install -y dbus
sudo ln -s /etc/sv/dbus /var/service
sudo xbps-install -y elogind
sudo ln -s /etc/sv/elogind /var/service
sudo xbps-install NetworkManager NetworkManager-openvpn NetworkManager-openconnect NetworkManager-vpnc NetworkManager-l2tp
sudo ln -sv /etc/sv/NetworkManager /var/service
sudo xbps-install pulseaudio pulseaudio-utils pulsemixer alsa-plugins-pulseaudio
sudo xbps-install bluez
sudo ln -sv /etc/sv/bluetoothd /var/service
sudo useradd -G bluetooth ${USER}
