#!/usr/bin/env sh

CONFIG=${XDG_CONFIG_HOME:-$HOME/.config}
NVIM=$CONFIG/nvim
SOURCE=$(dirname $0 | xargs readlink -f)
INSTALL=$HOME/.local/nvim/nvim-linux64

[ ! -d $CONFIG ] && mkdir -p $CONFIG
[ ! -d $NVIM ] && ln -s $SOURCE $NVIM

# Install plugins before load
if command -v nvim &>/dev/null; then
    nvim --headless "+Lazy! sync" +qa
elif [ -d $INSTALL ]; then
    echo nvim not on path, but was installed
    $INSTALL/bin/nvim --headless "+Lazy! sync" +qa
fi
