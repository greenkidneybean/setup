#!/usr/bin/env bash

if test ! $(which brew); then
    echo "Installing homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Install Homebrew packages"
brew update
brew tap Homebrew/bundle
brew bundle
brew cleanup
