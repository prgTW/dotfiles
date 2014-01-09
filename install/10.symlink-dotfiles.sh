#!/bin/bash

dir="$(dirname $BASH_SOURCE)/dotfiles"
for file in `ls -1A $dir`
do
    [[ -f "$HOME/$file" ]] && mv "$HOME/$file" "$HOME/$file.bak"
    ln -f -s $dir/$file $HOME/$file
done
