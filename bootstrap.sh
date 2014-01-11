#!/bin/bash

color()
{
    echo -e "\e[01;32m$*\e[00m";
}

process_file()
{
    color "Running "$1
    source $1
}

bootstrap()
{
    for file in `ls -A bootstrap/$1/*.sh`; do
        curdir=`pwd`
        process_file $file
        cd $curdir
    done
}

bootstrap $1