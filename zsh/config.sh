#!/bin/bash

# OhMyZsh

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh

# Dracula Theme for OhMyZsh

cd ~
git clone https://github.com/dracula/zsh.git   
mv ~/zsh/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme
sudo rm -R zsh
