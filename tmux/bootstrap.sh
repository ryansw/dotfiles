#!/usr/bin/env sh

CONFIG=${XDG_CONFIG_HOME:-$HOME/.config}
TMUX=$CONFIG/tmux
SOURCE=$(dirname $0 | xargs readlink -f)
TMUXRC=$HOME/.tmux.conf

[ ! -d $CONFIG ] && mkdir -p $CONFIG
[ ! -d $TMUX ] && ln -s $SOURCE $TMUX
[ ! -f $TMUXRC ] && ln -s $TMUX/tmux.conf $TMUXRC
[ ! -d $TMUX/plugins/tpm ] && git clone https://github.com/tmux-plugins/tpm $TMUX/plugins/tpm

# Install plugins before load
if command -v tmux &>/dev/null; then
    tmux start-server
    tmux new-session -d
    sleep 1
    $TMUX/plugins/tpm/scripts/install_plugins.sh
    tmux kill-server
fi
