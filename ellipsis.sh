#!/bin/bash

osx() {
	if ! utils.cmd_exists brew; then
		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi

	${PKG_PATH}/lib/brew

	if utils.prompt "This step may modify your OS X system defaults. Continue? (y/n)"; then
		${PKG_PATH}/lib/osxdefaults
	fi
}

linux() {
	${PKG_PATH}/lib/apt

	if utils.prompt "This step may modify your Ubuntu system defaults. Continue? (y/n)"; then
		${PKG_PATH}/lib/ubuntudefaults
	fi
}

pkg.link() {
	fs.link_files git
	fs.link_files shell
}

pkg.install() {
	git.add_include '~/.gitinclude'

	case $(os.platform) in
		osx)
			osx
			;;
		linux)
			linux
			;;
	esac
}
