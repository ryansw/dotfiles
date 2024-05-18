#!/usr/bin/env sh

CONFIG=${XDG_CONFIG_HOME:-$HOME/.config}
NVIM=$CONFIG/nvim
SOURCE=$(dirname $0 | xargs readlink -f)

[ ! -d $CONFIG ] && mkdir -p $CONFIG
[ ! -d $NVIM ] && ln -s $SOURCE $NVIM
