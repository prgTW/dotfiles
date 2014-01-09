#!/bin/bash

dir="$(dirname $BASH_SOURCE)/dotfiles"
for file in `ls -1A $dir`
do
    ln -f -s $dir/$file $HOME/$file
done
