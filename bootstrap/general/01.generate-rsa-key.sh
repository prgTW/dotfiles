#!/bin/bash

priv=$HOME/.ssh/id_rsa
pub=$HOME/.ssh/id_rsa.pub
[[ -f $priv ]] || ssh-keygen -t rsa -b 2048 -f "$priv"
