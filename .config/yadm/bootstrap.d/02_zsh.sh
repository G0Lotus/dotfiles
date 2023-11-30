#!/bin/bash

source "$HOME/.config/yadm/bootstrap.d/libs.sh"

pacman_install zsh
if [ ! "$SHELL" = "/bin/zsh" ]; then
	sudo chsh -s /bin/zsh "$USER"
	find "$HOME" -name ".bash*" -delete
	ln -sf "$HOME/.config/zsh/.zshenv" "$HOME/.zshenv"
fi
