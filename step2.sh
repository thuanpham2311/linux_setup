#!/usr/bin/env bash

mkdir ~/syns ; cd ~/

git clone https://github.com/thuanpham2311/dotfiles
# git clone git@github.com:thuanpham2311/dotfiles.git

# cd ~/syns/
# git clone git@github.com:thuanpham2311/ok.git

mkdir ~/backupDotfile
mv ~/.config/nvim         ~/backupDotfile
mv ~/.config/kitty        ~/backupDotfile
mv ~/.config/i3        ~/backupDotfile
mv ~/.config/rofi        ~/backupDotfile
mv ~/.fonts               ~/backupDotfile

cd ~/dotfiles/zsh/functions/
git clone https://github.com/zsh-users/zsh-syntax-highlighting
cd

curl -fsSL https://starship.rs/install.sh | bash

# gnome
dconf load /org/gnome/desktop/wm/keybindings/ < ~/dotfiles/keybindings.dconf
dconf dump /org/gnome/terminal/legacy/profiles:/ < ~/dotfiles/gnome-terminal-profiles.dconf
sudo ln -sf /usr/bin/kitty /usr/bin/gnome-terminal

# i3wm
# ln -sf ~/dotfiles/i3 ~/.config/
# ln -sf ~/dotfiles/rofi ~/.config/
# ln -sf ~/dotfiles/compton.conf ~/.config/
# ln -sf ~/dotfiles/dunst ~/.config/
# sudo ln -sf ~/dotfiles/90-touchpad.conf /etc/X11/xorg.conf.d/

ln -sf ~/syns/ok/.tinypng ~/.tinypng
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/ssh/config ~/.ssh/config
ln -sf ~/dotfiles/nvim ~/.config
ln -sf ~/dotfiles/kitty/ ~/.config/
ln -sf ~/dotfiles/bat/ ~/.config/
ln -sf ~/dotfiles/copyq.conf ~/.config/copyq/
ln -sf ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.selected_editor ~/.selected_editor
ln -sf ~/dotfiles/.fonts ~/.fonts ; cd ~/dotfiles/.fonts ; fc-cache -v
ln -sf ~/dotfiles/.Xmodmap ~/.Xmodmap
ln -sf ~/dotfiles/.Xmodmap ~/.Xmodmap

cowsay "Light theme by default, you can change by using 'dark' command after restart shell"
echo "
set background=light
colorscheme PaperColor" > ~/dotfiles/nvim/after/plugin/themeControl.vim
echo "include ./paper.conf" > ~/dotfiles/kitty/theme.conf
echo "--theme=\"GitHub\"" > ~/dotfiles/bat/config
cat ~/dotfiles/alacritty/alacritty-light.yml > ~/dotfiles/alacritty/alacritty.yml

cd ~/
