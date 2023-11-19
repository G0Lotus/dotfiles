#!/bin/bash

function pacman_install() {
    sudo pacman -S --noconfirm --needed "$@"
}

function yay_install() {
    yay -S --noconfirm --needed "$@"
}
