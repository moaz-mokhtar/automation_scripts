#!/usr/bin/env bash

set -aux

USER_NAME="$1"


adduser $USER_NAME 

usermod -aG sudo $USER_NAME 


groups $USER_NAME 


