#!/usr/bin/env sh

SOURCE=$(dirname $0 | xargs readlink -f)
ZINIT_HOME=${XDG_DATA_HOME:-$HOME/.local/share}/zinit/zinit.git

if [ -f ~/.zshrc ] && [ ! -L ~/.zshrc ]; then
    echo zshrc file exists, archiving
    if [ -f ~/.zshrc.bak ] ; then
        echo Archive already exists!
        exit 1
    fi
    mv ~/.zshrc ~/.zshrc.bak
fi

[ -L ~/.zshrc ] && rm  ~/.zshrc
[ -L ~/.zprofile ] && rm  ~/.zprofile

ln -s $SOURCE/zshrc ~/.zshrc
[ ! -f ~/.zprofile ] && ln -s $SOURCE/zprofile ~/.zprofile

if [ ! -d $ZINIT_HOME ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Install plugins before load
if command -v zsh &>/dev/null; then
    zsh -c 'source ~/.zshrc ; exit'
fi
