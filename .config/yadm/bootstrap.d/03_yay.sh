#!/bin/bash

if type yay >/dev/null 2>&1; then
	echo "yay already installed"
else
	echo "Starting to install yay"
	git clone https://aur.archlinux.org/yay-bin.git
	if [ $? -ne 0 ]; then
		echo "git clone yay-bin repo failed"
		exit 1
	fi
	cd yay-bin && {
		sed -i "s/github.com/github.hscsec.cn/g" PKGBUILD
		sed -i "s/github.com/github.hscsec.cn/g" .SRCINFO
		makepkg -si --noconfirm
		if [ $? -ne 0 ]; then
			echo "makepkg failed"
			exit 2
		fi
		cd ..
		rm -rf yay-bin
	}
fi
