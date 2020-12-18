#!/usr/bin/env bash

sudo pacman -Syu --noconfirm

sudo pamac build ibus-bamboo --noconfirm
sudo pacman -S yay tmux neofetch htop mpv trash-cli flameshot tldr net-tools xclip speedtest-cli neovim fd tree gimp cowsay vifm ruby ripgrep brave kitty nnn exa noto-fonts-emoji lua aria2 onlyoffice-desktopeditors foliate tig clang nodejs npm --noconfirm

yay -S autokey gnome-shell-pomodoro universal-ctags --noconfirm

# use npm install --global without sudo
npm config set prefix ~/.npm

npm install --global prettier
# go to tinypng get tinypng dev API and paste it to file .tinypng at $HOME
npm install --global tinypng-cli
npm install --global browser-sync
npm install --global yarn
npm install --global neovim
npm install --global typescript

sudo python3 -m pip install --user --upgrade pynvim
gem install neovim

# nvim setup
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
