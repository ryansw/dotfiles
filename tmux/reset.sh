#!/usr/bin/env sh

TMUX=${XDG_CONFIG_HOME:-$HOME/.config}/tmux

[ -d $TMUX/plugins ] && rm -rf $TMUX/plugins
[ -d $TMUX ] && unlink $TMUX

# Re-run the bootstrap
$(dirname $0)/bootstrap.sh
