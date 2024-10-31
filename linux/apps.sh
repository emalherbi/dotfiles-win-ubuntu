#!/bin/bash

source common/functions.sh

print "Starting: Linux Others"

# Curl
install_checked "curl" "which curl" "sudo apt install curl"

# Rar
install_checked "rar" "which rar" "sudo apt install rar unrar"

# SVN
install_checked "svn" "which svn" "sudo apt install subversion"

# Network Manager
install_checked "network-manager" "which network-manager" "sudo apt install network-manager"

# NVM
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash 
source ~/.profile
nvm install 18.19.1

print "Finished: Linux Others"
