if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    autojump
    colored-man-pages
    colorize
    command-not-found
    fzf
    gh
    git
    git-flow
    gitignore
    pip
    python
    rust
    sudo
    thefuck
    tldr
    vi-mode
    zsh-abbr
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias ls="lsd"
alias la="lsd -a"
alias lla="lsd -la"
alias l="lsd -l"
alias ll="lsd -l"
alias n="nvim"
alias nv="neovide"

export LC_ALL=en_US.UTF-8
export BAT_THEME="OneHalfDark"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

export PATH="$PATH:/home/zivit/.local/bin"

