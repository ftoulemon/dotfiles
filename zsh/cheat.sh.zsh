# Path to your oh-my-zsh configuration.
CHT=$HOME/.cheat-sh

# check if oh-my-zsh is installed
if [ ! -d $CHT ]; then
    echo "Looks like cheat.sh is missing, getting it ..."
    mkdir $CHT
    curl https://cht.sh/:cht.sh > $CHT/cht.sh
    chmod +x $CHT/cht.sh
    # For completion
    mkdir $CHT/d/
    curl https://cheat.sh/:zsh > $CHT/d/_cht
fi

fpath=($CHT/d/ $fpath)
export PATH=$PATH:$CHT

