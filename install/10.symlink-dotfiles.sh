#!/bin/bash

dotfiles="$(readlink -f dotfiles)"
for dotfile in `ls -A "$dotfiles"`; do
    [[ -f "$HOME/$file" ]] && mv "$HOME/$(basename $dotfile)" "$HOME/$(basename $dotfile).bak"
    ln -f -s "$(readlink -f ""$dotfile"")" "$HOME/$(basename $dotfile)"
done

