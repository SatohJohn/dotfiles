#!/bin/bash

set -eufo pipefail

formulae=(
	curl
	direnv
	awscli
	gnutls
	git
	go
	jq
    yq
	nvm
	wget
	tree
	kubectx
	pyenv
	rbenv
	rustup-init
	thefuck
	chezmoi
)

casks=(
	clipy
	google-cloud-sdk
	visual-studio-code
)

brew update

brew install ${formulae[@]}
brew install --cask ${casks[@]}