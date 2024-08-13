#!/bin/bash

# Updating System

sudo pacman -Syu

# Install generic programs

sudo pacman -Sy archlinux-keyring firefox neovim fastfetch fzf go git kitty make man-db obsidian spotify-launcher telegram-desktop timeshift ttf-jetbrains-mono-nerd unzip vlc discord libreoffice-still gimp postman-bin code dolphin bat

# setup yay

sudo pacman -S --needed git base-devel yay

# install yay packages

# yay -S 

# switch capslock and escape key

sudo mkdir /usr/local/share/kbd/keymaps/
sudo cp ./keyboard-layout.map.gz /usr/local/share/kbd/keymaps/personal.map.gz
sudo echo "KEYMAP=/usr/local/share/kbd/keymaps/personal.map" >> /etc/vconsole.conf

# setup open-vpn to U.S

sudo pacman -S openvpn















