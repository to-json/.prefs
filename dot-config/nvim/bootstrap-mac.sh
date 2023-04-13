if ! command -v brew &> /dev/null
then
	echo "homebrew is not installed, get it and try again"
	exit
fi

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
             font-iosevka-nerd-font \
             hammerspoon \
             lulu \
             obs \
             racket \
             bash-language-server \
             clojure-lsp-native \
             lua-language-server \
             yaml-language-server
