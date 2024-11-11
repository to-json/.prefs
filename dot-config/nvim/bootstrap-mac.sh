#!/bin/bash
if ! command -v brew &> /dev/null
then
	echo "homebrew is not installed, get it and try again"
	exit
fi

brew tap homebrew/cask-fonts
brew install tree-sitter \
             rg \
             fd \
             clojure \
             fennel \
             git \
             janet \
             leiningen \
             lua \
             luv \
             neovim \
             neovide \
             node \
             openjdk \
             python-tk@3.11 \
             rustup-init \
             starship \
             tmux \
             tree \
             alacritty \
             font-comic-shanns-mono-nerd-font \
             font-iosevka-nerd-font \
             font-comic-mono \
             hammerspoon \
             lulu \
             obs \
             racket \
             bash-language-server \
             clojure-lsp \
             lua-language-server \
             yaml-language-server \
             go \
             typescript \
             ruby-install \
             chruby



go install golang.org/x/tools/gopls@latest
go install github.com/go-delve/delve/cmd/dlv@latest
pip3 install jedi-language-server ruff ruff-lsp
