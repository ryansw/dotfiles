#!/usr/bin/env sh

SOURCE=$(dirname $0 | xargs readlink -f)

if [ -f ~/.bashrc ] && [ ! -L ~/.bashrc ]; then
    echo bashrc file exists, archiving
    if [ -f ~/.bashrc.bak ] ; then
        echo Archive already exists!
        exit 1
    fi
    mv ~/.bashrc ~/.bashrc.bak
fi

[ -L ~/.bashrc ] && rm  ~/.bashrc
[ -L ~/.bash_aliases ] && rm ~/.bash_aliases

[ ! -f ~/.bash_aliases ] && ln -s $SOURCE/bash_aliases ~/.bash_aliases
ln -s $SOURCE/bashrc ~/.bashrc

