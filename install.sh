#!/bin/bash

pushd .

color()
{
    echo -e "\e[01;32m >> \e[00m$*";
}

dir="$HOME/dotfiles"
mkdir -p $dir
if [ "`ls -A $dir`" ]; then
    for file in install/*.sh; do
        color "Running "$file
        bash $file
    done
else
    cd $dir
    git clone git://github.com/prgTW/dotfiles.git .
    bash update.sh
fi

popd
