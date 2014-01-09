#!/bin/bash

pushd .

cd `dirname $BASH_SOURCE`
git pull

for file in /install/*.sh
do
    color "Running "$file
    bash $file
done

popd
