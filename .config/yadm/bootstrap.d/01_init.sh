#!/bin/bash

source ./libs.sh

sudo sed -i "s/.*ParallelDownloads.*/ParallelDownloads = $(nproc)/g" /etc/pacman.conf
sudo pacman-key --init
sudo pacman-key --populate
pacman_install archlinux-keyring reflector
sudo reflector --latest 20 --fastest 20 --threads 20 --sort rate --protocol https -c China --save /etc/pacman.d/mirrorlist
sudo pacman -Syyu --noconfirm
