#!/usr/bin/env bash

set -xeu

echo "Install Go"
sudo apt-get install wget
wget https://go.dev/dl/go1.18.3.linux-amd64.tar.gz
rm -rf /usr/local/go 
tar -C /usr/local -xzf go1.18.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version













