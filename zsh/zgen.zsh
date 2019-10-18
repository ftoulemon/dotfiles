source $HOME/.dotfiles/zsh/zsh-spaceship-prompt.zsh
source $HOME/.dotfiles/zgen/zgen.zsh

# if the init scipt doesn't exist
if ! zgen saved; then
    # specify plugins here
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-completions
    zgen load denysdovhan/spaceship-prompt spaceship
    zgen load b4b4r07/emoji-cli

    # generate the init script from plugins above
    zgen save
fi

zle -N emoji::cli
bindkey "^S" emoji::cli

