#!/usr/bin/env sh

INSTALL=$HOME/.local/nvim
LOCALBIN=$HOME/.local/bin
NVIMBUILD=nvim-linux-x86_64
FILENAME=${NVIMBUILD}.tar.gz

[ -d $INSTALL ] && rm -rf $INSTALL

# Create the install directory
mkdir -p $INSTALL
cd $INSTALL

# Download the binary
curl -LO https://github.com/neovim/neovim/releases/latest/download/${FILENAME}

# Extract the image
tar -xzf ${FILENAME}

# Link the bin to user path
[ ! -d $LOCALBIN ] && mkdir -p $LOCALBIN && echo Local bin may not be on path
ln -s $INSTALL/${NVIMBUILD}/bin/* $LOCALBIN/
