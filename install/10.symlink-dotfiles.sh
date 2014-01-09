#!/bin/bash

dotfiles="$(readlink -f dotfiles)"
for dotfile in `ls -A "$dotfiles"`; do
    #[[ -f "$HOME/$file" ]] && echo mv "$HOME/$file" "$HOME/$file.bak"
    echo ln -f -s "$(readlink -f ""$dotfile"")" "$HOME/$(basename $dotfile)"
done

