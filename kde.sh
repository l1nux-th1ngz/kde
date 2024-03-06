#!/bin/bash

# Install packages
sudo pacman -S --noconfirm \
gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite \
xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland \
libinput libliftoff libdisplay-info cpio tomlplusplus wl-roots kitty ranger vlc mpv geany geany-plugins \
wayland git xorg-xlsclients qt5-wayland glfw-wayland kde-applications plasma-wayland-session bluefish \
firefox chromium bluez-utils blues-tools bluez qt6-wayland qt5-base qt6-base qt5ct qt6ct cliphist libva \
libdecor grim slurp wl-sunset notepadqq wofi layer-shell-qt sddm nano kvantum automake autoconf python \
autoconf-archive foot kitty ranger terminator alaceritty spotify-launcher playerctl brightnessctl ascii \
jq network-manager-applet nm-connection-editor go nodejs npm jdk-openjdk jre-openjdk visualvm xdg-utils \
xdg-user-dirs xdg-user-dirs-gtk blueman font-manager granite granite7 gtk3 gtk4 gum zenity yad libnewt \
osdlyrics ncmpc ncmpcpp mpc mpd noise-suppression-for-voice btop htop kde-rounded-corners qt5-imageformats \
imagemagick neofetch rofi ffmpeg gvfs ffmpegthumbs pamixer ufw gufw pavucontrol tumbler starship wget pipewire \ 
wireplumber reflector glibc pacman-contrib curl intel-ucode lsd thefuck dart-sass parallel qt6-connectivity \
qt6-svg gtk-layer-shell gjs glib2 glibc typescript vala i2pd ascii jp2a gifsicle lz4 lib32-giflib vhs figlet \
zram-generator zip unzip p7zip ark kio-admin sudo polkit polkit-kde-agent coreutils util-linux arch-install-scripts \
archinstall archiso archlinux-contrib

# Update Directories
xdg-user-dirs-update
 

# Enable services
sudo systemctl enable sddm
sleep 3

sudo systemctl enable --now bluetooth.service
sleep 3

sudo systemctl enable NetworkManager
sleep 3
sudo systemctl start NetworkManager

sleep3

sudo -u $username systemctl --user enable wireplumber.service
sleep 3

systemctl enable bluetooth
sleep 3

sudo systemctl enable paccache.timer
sleep 3
