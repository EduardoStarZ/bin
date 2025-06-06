#!/bin/sh

mkdir .config

sudo pacman -Sy archlinux-keyring
sudo pacman -Sy --needed git base-devel zsh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd ~

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


cd ~

git clone https://github.com/EduardoStarZ/dotfiles dotfiles
mv dotfiles/* .

git clone https://github.com/EduardoStarZ/dwm dwm
cd dwm
sudo make clean install
cd ..


git clone https://github.com/EduardoStarZ/st st
cd st
sudo make clean install
cd ..


git clone https://github.com/EduardoStarZ/goblocks
cd goblocks
sudo make install
mv goblocks.json ~/.config/goblocks.json

sudo pacman -Sy neovim nvm yarn pnpm npm nodejs rustup ripgrep discord ttf-jetbrains-mono nerd-fonts picom dunst maim xclip xrandr zip unzip thunar yazi go github-cli ffmpeg rofi
yay -Sy zen-browser-bin steam libreoffice-still 7zip
