#!/bin/bash

pushd .

cd `dirname $BASH_SOURCE`
git pull

popd
