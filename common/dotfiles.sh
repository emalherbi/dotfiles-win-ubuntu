#!/bin/bash

source common/functions.sh

print "Starting: Dotfiles"

# .bash_aliases
if [ -f "system/.bash_aliases" ]; then
    sudo ln -sf $pwd/system/.bash_aliases ~/.bash_aliases
    source ~/.bash_aliases
    print_checked "~/.bash_aliases"
    print_alert "For use on this session, type: source ~/.bash_aliases"
fi

# .inputrc
if [ -f "system/.inputrc" ]; then
    sudo ln -sf $pwd/system/.inputrc ~/.inputrc
    print_checked "~/.inputrc"
fi

# .gitconfig
if [ -f "git/.gitconfig" ]; then
    sudo ln -sf $pwd/git/.gitconfig ~/.gitconfig
    print_checked "~/.gitconfig"
fi

# .gitignore
if [ -f "git/.gitignore" ]; then
    sudo ln -sf $pwd/git/.gitignore ~/.gitignore
    # git config --global core.excludesfile ~/.gitignore
    print_checked "~/.gitignore"
fi

# this file prevents the shell login message
sudo touch ~/.hushlogin

print "Finished: Dotfiles"
