#!/bin/bash

pushd .

color()
{
    echo -e "\e[01;32m >> \e[00m$*";
}

cd `dirname $BASH_SOURCE`
for file in /update/*.sh
do
    color "Running "$file
    bash $file
done

popd
