#!/bin/bash

pushd .

cd `dirname $BASH_SOURCE`
git pull

for file in /update/*.sh
do
    color "Running "$file
    bash $file
done

popd
