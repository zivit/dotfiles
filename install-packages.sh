#!/bin/bash

sudo pacman -S \
    bash-language-server \
    bat \
    cloc \
    cmake \
    fd \
    gcc \
    git-delta \
    github-cli \
    goverlay \
    krita \
    lazygit \
    lsd \
    lua-language-server \
    make \
    neofetch \
    neovide \
    ninja \
    obs-studio \
    python \
    python-pip \
    python-pipx \
    ripgrep \
    rustup \
    stow \
    thefuck \
    wl-clipboard \
    unzip \

cd /tmp
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S autojump bluemail
rustup install stable
pipx ensurepath
pipx install cmake-language-server

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
