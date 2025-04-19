#!/bin/bash

sudo pacman -S \
    bash-language-server \
    bat \
    brightnessctl \
    cloc \
    cmake \
    dunst \
    fd \
    gcc \
    git-delta \
    github-cli \
    goverlay \
    grim \
    grub-btrfs \
    krita \
    lazygit \
    lsd \
    lua-language-server \
    make \
    mako \
    man-db \
    neofetch \
    neovide \
    ninja \
    obs-studio \
    playerctl \
    python \
    python-pip \
    python-pipx \
    ripgrep \
    rustup \
    slurp \
    snapper \
    snap-pac \
    stow \
    swayidle \
    swaylock \
    thefuck \
    unzip \
    wl-clipboard \

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
