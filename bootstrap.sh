#!/usr/bin/env sh

DOTFILES=$(readlink -f $(dirname $0))

$DOTFILES/scripts/bootstrap.sh
