#!/bin/bash

<< info
 This script will install packages by passing the argument

eg. ./install_package.sh nginx
eg. ./install_package.sh docker.io
info

sudo apt-get install "$1" -y

echo "========== Installation completed ========="
