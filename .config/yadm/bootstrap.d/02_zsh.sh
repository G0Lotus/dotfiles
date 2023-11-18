#!/bin/bash

source ./libs.sh

pacman_install zsh
if [ ! "$SHELL" = "/bin/zsh" ]; then
    sudo chsh -s /bin/zsh "$USER"
    find $HOME -name ".bash*" -delete
    exec zsh
fi
