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

plugins=(git git-extras colored-man-pages web-search colorize docker cp sudo thefuck tmux screen virtualenv ubuntu python z zsh-navigation-tools mercurial yum)

source $ZSH/oh-my-zsh.sh

