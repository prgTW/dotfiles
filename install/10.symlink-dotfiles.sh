#!/bin/bash

dotfiles="$(readlink -f dotfiles)"
for dotfile in `ls -A "$dotfiles"`; do
    [[ -f "$HOME/$(basename $dotfile)" ]] && mv "$HOME/$(basename $dotfile)" "$HOME/$(basename $dotfile).bak"
    ln -f -s "$(readlink -f ""dotfiles/$dotfile"")" "$HOME/$(basename $dotfile)"
done

source $HOME/.bash_profile
