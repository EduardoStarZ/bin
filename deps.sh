#!/bin/sh

cd ~

sudo pacman -Sy --needed --noconfirm archlinux-keyring git base-devel zsh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ~

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd ~

git clone https://github.com/EduardoStarZ/dotfiles .config

git clone https://github.com/EduardoStarZ/st st
cd st
sudo make clean install
cd ..

sudo pacman -Sy --noconfirm neovim nvm yarn pnpm npm nodejs rustup ripgrep discord ttf-jetbrains-mono nerd-fonts picom dunst maim xclip xrandr zip unzip thunar yazi go github-cli ffmpeg rofi ly

sudo systemctl enable ly.service
sudo systemctl start ly.service

yay -Sy zen-browser-bin libreoffice-still 7zip
