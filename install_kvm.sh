#!/usr/bin/env bash

echo "Installing KVM..."
# ref :https://phoenixnap.com/kb/ubuntu-install-kvm
apt-get install -y qemu qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager

# Ref: https://askubuntu.com/questions/345218/virt-manager-cant-connect-to-libvirt
newgrp libvirt
virt-manager
getent group libvirt


