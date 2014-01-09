#!/bin/bash

pushd .

color()
{
    echo -e "\e[01;32m >> \e[00m$*";
}

dir="$HOME/dotfiles"
mkdir -p $dir
if [ "`ls -A $dir`" ]; then
    echo "Cannot install, $dir is not empty"
else
    cd $dir
    git clone git://github.com/prgTW/dotfiles.git .
    bash update.sh
fi

popd
