#!/bin/bash

# Updating System

sudo pacman -Syu

# Install generic programs

sudo pacman -Sy archlinux-keyring firefox neovim fastfetch fzf go git kitty make man-db obsidian spotify-launcher telegram-desktop timeshift ttf-jetbrains-mono-nerd unzip vlc discord libreoffice-still gimp postman-bin code dolphin bat curl bash btop tmux

# setup yay

sudo pacman -S --needed git base-devel yay

# install yay packages

# yay -S 

# switch capslock and escape key

sudo mkdir /usr/local/share/kbd/keymaps/
sudo cp ./keyboard-layout.map.gz /usr/local/share/kbd/keymaps/personal.map.gz
sudo echo "KEYMAP=/usr/local/share/kbd/keymaps/personal.map" >> /etc/vconsole.conf

# setup open-vpn to U.S
# aliased vpn to start vpn on local machine

sudo pacman -S openvpn
sudo cp ./vpn-config.protonvpn.udp.ovpn /etc/openvpn/client/vpn-config.protonvpn.udp.ovpn
sudo cp ./vpn-login.conf /etc/openvpn/client/vpn-login.conf
echo "alias vpn='sudo openvpn /etc/openvpn/client/vpn-config.protonvpn.udp.ovpn'
" >> ~/.bashrc

# setup node with nvm

export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

# lines added to automatically source it upon login

echo 'export NVM_DIR="$HOME/.nvm"' >> .bashrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> .bashrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> .bashrc

# install node

nvm install node

# install oh-my-posh theme

sudo curl -s https://ohmyposh.dev/install.sh | bash -s
cp -r ./posh-themes/ Documents/posh-themes
echo 'eval "$(oh-my-posh init bash --config ~/Documents/posh-themes/robbyrussell.omp.json)"
' >> .bashrc

# default global git configs

git config --global core.editor "nvim"
git config --global rerere.enabled true
git config --global pull.rebase true
git config --global init.defaultBranch master














