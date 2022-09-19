#!/usr/bin/env bash

set -xeu


docker rm -vf $(docker ps -aq)
