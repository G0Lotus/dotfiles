#!/bin/bash

function pacman_install() {
    sudo pacman -S --noconfirm --needed "$@"
}

