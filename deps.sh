#!/bin/sh

cd ~

sudo pacman -Sy --needed --noconfirm archlinux-keyring git base-devel zsh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ~

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd ~

git clone https://github.com/EduardoStarZ/dotconfig .config

git clone https://github.com/EduardoStarZ/st st
cd st
sudo make clean install
cd ~

sudo pacman -Sy --noconfirm neovim npm nodejs rustup ripgrep discord ttf-jetbrains-mono nerd-fonts dunst maim xclip xrandr zip unzip nautilus yazi go github-cli ffmpeg rofi ly gnome-keyring polybar bluetui

sudo systemctl enable ly@tty1
sudo systemctl enable ly@tty2

yay -Sy zen-browser-bin libreoffice-still 7zip betterlockscreen
