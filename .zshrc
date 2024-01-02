# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
PROMPT=''

source ~/.zsh/catppuccin_frappe-zsh-syntax-highlighting.zsh

plugins=(
    zsh-syntax-highlighting
    git
    zsh-autosuggestions
    docker
    docker-compose
    aws
    pip
    terraform
)

source $ZSH/oh-my-zsh.sh

export VIM_EDITOR=vim
export EDITOR=vim

alias code="codium"

path+=/home/danielle/.local/bin

# Created by `pipx` on 2023-07-04 19:49:42
export PATH="$PATH:/home/danielle/.local/bin"

# Dotfiles repository
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'