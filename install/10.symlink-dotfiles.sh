#!/bin/bash

pushd .

dir="$(dirname $0)/../dotfiles"
pwd
for file in `ls -A "$dir"`
do
    #[[ -f "$HOME/$file" ]] && echo mv "$HOME/$file" "$HOME/$file.bak"
    #echo ln -f -s $dir/$file "$HOME/$(basename $file)"
done

popd
