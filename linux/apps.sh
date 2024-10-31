#!/bin/bash

source common/functions.sh

print "Starting: Linux Others"

# Rar
install_checked "rar" "which rar" "sudo apt-get install rar unrar"

# Node
install_checked "node" "which node" "sudo apt-get install node"

# SVN
install_checked "svn" "which svn" "sudo apt-get install subversion"

# Network Manager
install_checked "network-manager" "which network-manager" "sudo apt-get install network-manager"

print "Finished: Linux Others"
