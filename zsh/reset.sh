#!/usr/bin/env sh

ZINIT_HOME=${XDG_DATA_HOME:-$HOME/.local/share}/zinit/zinit.git

[ -d $ZINIT_HOME ] && rm -rf $ZINIT_HOME
[ -L ~/.zprofile ] && rm  ~/.zprofile

# Re-run the bootstrap
$(dirname $0)/bootstrap.sh
