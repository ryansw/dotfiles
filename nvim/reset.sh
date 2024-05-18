#!/usr/bin/env sh

NVIM=${XDG_CONFIG_HOME:-$HOME/.config}/nvim
NVIM_DATA=${XDG_DATA_HOME:-$HOME/.local/share}/nvim

[ -d $NVIM_DATA ] && rm -rf $NVIM_DATA
[ -d $NVIM ] && unlink $NVIM

# Re-run the bootstrap
$(dirname $0)/bootstrap.sh
