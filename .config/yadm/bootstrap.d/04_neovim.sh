#!/bin/bash

source ./libs.sh

yay_install neovim fd ripgrep nodejs lua npm unzip lazygit
if [ $? -ne 0 ]; then
	echo "Neovim env install failed"
	exit 1
else
	echo "Neovim env install successfully !"
	echo "To install neovim plugins, please manual run 'nvim' and it will automatically start"
fi
