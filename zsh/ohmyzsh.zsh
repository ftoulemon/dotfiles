# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# check if oh-my-zsh is installed
if [ ! -d $ZSH ]; then
    echo "Looks like oh-my-zsh is missing, getting it ..."
    if which git >/dev/null 2>&1; then
        git clone git://github.com/robbyrussell/oh-my-zsh.git $ZSH
    else
        echo "Argh, git not found."
    fi
fi

plugins=(git colored-man web-search colorize docker cp sudo thefuck tmux screen virtualenv zsh-autosuggestions ubuntu python zsh-navigation-tools z vi-mode)

source $ZSH/oh-my-zsh.sh

# unalias ag from `ubuntu` plugin
unalias ag

