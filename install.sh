#!/bin/bash

pushd .

dir="$HOME/dotfiles"
mkdir -p $dir
if [ "`ls -A $dir`" ]; then
    echo "Cannot install, $dir is not empty"
else
    cd $dir
    git clone git://github.com/prgTW/dotfiles.git .
    sudo bash update.sh
fi

popd
