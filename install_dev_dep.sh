#!/usr/bin/env bash


echo "Installing development packages dependencies"
apt-get update
apt-get install -y --no-install-recommends \
  libssl-dev \
  build-essential \
  ca-certificates \
  clang \
  cmake \
  curl \
  libc6-dev \
  libclang-dev \
  libevent-dev \
  llvm-dev \
  pkg-config \
  git \
  neovim
  
