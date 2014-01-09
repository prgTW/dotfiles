#!/bin/bash

dir="$HOME/dotfiles"
mkdir -p $dir
cd $dir
git clone git://github.com/prgTW/dotfiles.git .
cd dotfiles
sudo bash update.sh
