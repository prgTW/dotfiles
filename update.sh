#!/bin/bash

cd `dirname $BASH_SOURCE`
for file in /update/*.sh
do
    bash $file
done
