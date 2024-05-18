#!/usr/bin/env sh

SOURCE=$(dirname $0 | xargs readlink -f)

# TODO This should be an option
if ! command -v nvim; then
    echo nvim not installed - installing
    $SOURCE/nvim/install.sh
fi

# TODO Eventually make this take options and not bootstrap everything
$SOURCE/bash/bootstrap.sh
$SOURCE/nvim/bootstrap.sh
$SOURCE/tmux/bootstrap.sh
$SOURCE/zsh/bootstrap.sh
