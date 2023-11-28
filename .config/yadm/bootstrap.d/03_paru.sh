#!/bin/bash

function isCommandNotExit() {
	commandName="$1"
	if builtin command -v "$commandName" >/dev/null 2>&1; then
		echo "$commandName already installed"
		return 1
	else
		echo "Starting to install $commandName"
		return 0
	fi
}

function installAurPkg() {
	pkgName="$1"
	if ! git clone "https://aur.archlinux.org/$pkgName.git"; then
		echo "git clone $pkgName repo failed"
		return 1
	fi
	cd "$pkgName" && {
		sed -i "s/github.com/github.hscsec.cn/g" PKGBUILD
		sed -i "s/github.com/github.hscsec.cn/g" .SRCINFO
		if ! makepkg -si --noconfirm; then
			echo "makepkg failed"
			return 1
		fi
	}
	cd ..
	rm -rf "$pkgName"
}

# main code here
if isCommandNotExit "paru"; then
	installAurPkg "paru-bin"
fi
