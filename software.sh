#!/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew install brew-cask git gnupg zsh fortune rust haskell-stack

brew cask update
brew cask install emacs firefox iterm2 spotify vlc steam dropbox java intellijidea gimp lastpass battle-net electrum transmission
