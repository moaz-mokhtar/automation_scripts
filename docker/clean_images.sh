#!/usr/bin/env bash

set -xeu


docker rmi -f $(docker images -aq)
