#!/usr/bin/env bash

echo "Installing stable version Rust ... "
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs >/tmp/rust-setup.sh
chmod +x /tmp/rust-setup.sh
/tmp/rust-setup.sh -y --default-toolchain nightly --profile minimal
source "$HOME"/.cargo/env
