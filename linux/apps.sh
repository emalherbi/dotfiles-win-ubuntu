#!/bin/bash

source common/functions.sh

print "Starting: Linux Others"

# Curl
install_checked "curl" "which curl" "sudo apt install curl"

# Rar
install_checked "rar" "which rar" "sudo apt install rar unrar"

# SVN
install_checked "svn" "which svn" "sudo apt install subversion"

# NVM
if [ -d "/home/$user/.nvm" ]; then
    print_checked "nvm"
else
    sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash 
    source ~/.profile
    nvm install 18.19.1
fi

print "Finished: Linux Others"
