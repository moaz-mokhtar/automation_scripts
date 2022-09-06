#!/usr/bin/env bash

set -xeu

snap install vlc

# https://itsfoss.com/install-h-264-decoder-ubuntu/
apt-get install gstreamer1.0-plugins-bad \
	libavcodec-extra gstreamer1.0-plugins-ugly \
	gstreamer1.0-libav ubuntu-restricted-extras


