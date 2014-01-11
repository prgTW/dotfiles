#!/bin/bash

color()
{
    echo -e "\e[01;32m$*\e[00m";
}

prepare()
{
    sudo apt-get update
    sudo apt-get --yes --force-yes install git
    
    dir="$HOME/dotfiles"
    mkdir -p $dir
    cd $dir
    
    if [ "`ls -A $dir`" == "" ]; then
        git clone git://github.com/prgTW/dotfiles.git .
    else
        git reset --hard HEAD
        git pull
    fi
}

process_file()
{
    color "Running "$1
    source $1
}

bootstrap()
{
    for file in `ls -A bootstrap/$1/*.sh`; do
        process_file $file
    done
}

install()
{
    bootstrap general
    bootstrap $1
}

if [ "$1" -neq "desktop"] and [ "$1" -neq "server" ] ; then
    echo Specify "desktop" or "server" as the first parameter
    return 1
fi

curdir=`pwd`

prepare

if [ "$1" == "server"]; then
    install server
fi

if [ "$1" == "desktop"]; then
    install desktop
fi

cd $curdir
