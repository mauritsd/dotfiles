#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
        --exclude ".gitignore" \
		--exclude "install.sh" \
		--exclude "README.md" \
		-avh --no-perms . ~;
}

doIt;