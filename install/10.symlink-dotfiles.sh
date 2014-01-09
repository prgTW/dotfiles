#!/bin/bash

pushd .

dir="$(dirname $(dirname $BASH_SOURCE))"
cd "$dir"
for file in `ls -1A dotfiles`
do
    [[ -f "$HOME/$file" ]] && echo mv "$HOME/$file" "$HOME/$file.bak"
    echo ln -f -s $dir/dotfiles/$file $HOME/$file
done

popd
