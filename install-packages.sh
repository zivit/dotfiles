#!/bin/bash

sudo pacman -S \
    bash-language-server \
    bat \
    brightnessctl \
    cloc \
    cmake \
    dunst \
    fd \
    firefox \
    gcc \
    git-delta \
    github-cli \
    goverlay \
    grim \
    grub-btrfs \
    jq \
    krita \
    lazygit \
    lsd \
    lua-language-server \
    make \
    mako \
    mangohud \
    man-db \
    neofetch \
    neovide \
    ninja \
    obs-studio \
    pamixer \
    playerctl \
    plasma-browser-integration \
    python \
    python-pip \
    python-pipx \
    ripgrep \
    rustup \
    slurp \
    snapper \
    snap-pac \
    steam \
    stow \
    swayidle \
    swaylock \
    thefuck \
    ttf-jetbrains-mono-nerd \
    unzip \
    wl-clipboard \
    zsh \

cd /tmp
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S autojump bluemail deezer
rustup install stable
pipx ensurepath
pipx install cmake-language-server

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
