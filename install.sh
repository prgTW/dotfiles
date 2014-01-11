#!/bin/bash

if [ "$1" -neq "desktop"] and [ "$1" -neq "server" ] ; then
    echo Specify "desktop" or "server" as the first parameter
    return 1
fi

isDesktop=[[ "$1" == "desktop" ]]
isServer=[[ "$1" == "server" ]]

color()
{
    echo -e "\e[01;32m$*\e[00m";
}

sudo apt-get update
sudo apt-get --yes --force-yes install git wget curl

curdir=`pwd`
dir="$HOME/dotfiles"
mkdir -p $dir
cd $dir

if [ "`ls -A $dir`" == "" ]; then
    git clone git://github.com/prgTW/dotfiles.git .
else
    git reset --hard HEAD
    git pull
fi

for file in `ls -A install/*.sh`; do
    color "Running "$file
    source $file
done

cd $curdir
