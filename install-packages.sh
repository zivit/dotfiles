#!/bin/bash

sudo pacman -S lazygit github-cli yay thefuck ripgrep fd lsd bat rustup steam github-cli unzip make ninja git-delta xsel bash-language-server stow

yay -S autojump bluemail
rustup install stable
pip install cmake-language-server

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
