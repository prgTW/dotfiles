#!/bin/bash

pushd .

color()
{
    echo -e "\e[01;32m >> \e[00m$*";
}

dir="$HOME/dotfiles"
mkdir -p $dir
cd $dir

if [ "`ls -A $dir`" == "" ]; then
    git clone git://github.com/prgTW/dotfiles.git .
fi

#for file in install/*.sh; do
    #color "Running "$file
    #bash $file
#done

popd
