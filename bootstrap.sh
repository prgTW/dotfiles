#!/bin/bash

bootstrapName=

color()
{
    echo -e "\e[01;32m$*\e[00m";
}

process_file()
{
    color "Running "$1
    source $1 "$bootstrapName"
}

bootstrap()
{
    for file in `ls -A bootstrap/$1/*.sh`; do
        curdir=`pwd`
        process_file $file
        cd $curdir
    done
}

mkdir -p `dirname "$bootstrapFile"`

bootstrapFile="$HOME"/.dotfies/bootstrap
bootstrapName=`cat "$bootstrapFile"`

if [ "$bootstrapName" == "" ]; then
    if [ "$1" == ""]; then
        echo Usage: $0 bootstrapName
        return 1;
    fi
    bootstrapName="$1"
fi

echo "$bootstrapName" > $bootstrapFile
bootstrap $bootstrapName
