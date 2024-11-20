#!/usr/bin/env sh

DOTFILES=$(readlink -f $(dirname $0)/..)

# Fix the origin for the repo
git -C $DOTFILES remote set-url origin git@github.com:ryansw/dotfiles.git 

# TODO This should be an option
if ! command -v nvim >/dev/null; then
    echo nvim not installed - installing
    $DOTFILES/nvim/install.sh
fi

# TODO Eventually make this take options and not bootstrap everything
$DOTFILES/bash/bootstrap.sh
$DOTFILES/nvim/bootstrap.sh
$DOTFILES/tmux/bootstrap.sh
$DOTFILES/zsh/bootstrap.sh
