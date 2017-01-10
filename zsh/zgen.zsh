source $HOME/.dotfiles/zgen/zgen.zsh

# if the init scipt doesn't exist
if ! zgen saved; then
    # specify plugins here
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-completions

    # generate the init script from plugins above
    zgen save
fi
