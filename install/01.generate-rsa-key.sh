#!/bin/bash

pub=$HOME/.ssh/id_rsa.pub
[[ -f $pub ]] || ssh-keygen -t rsa -b2048
