#!/usr/bin/env bash

set -xeu



echo "Install dev dependencies"
apt-get update
apt-get install -y --no-install-recommends \
  build-essential \
  ca-certificates \
  clang \
  cmake \
  curl \
  libc6-dev \
  libclang-dev \
  libevent-dev \
  llvm-dev \
  pkg-config


echo "Install Kubernetes"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl


echo "Install minikube"
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

echo "Install Dapr"
wget -q https://raw.githubusercontent.com/dapr/cli/master/install/install.sh -O - | /bin/bash



echo "Install Rust"
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs >/tmp/rust-setup.sh
chmod +x /tmp/rust-setup.sh
/tmp/rust-setup.sh -y --default-toolchain nightly --profile minimal
source "$HOME"/.cargo/env


echo "Install Go"
sudo apt-get install wget
wget -O https://go.dev/dl/go1.18.2.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version













