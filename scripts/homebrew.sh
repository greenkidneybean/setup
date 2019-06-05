#!/usr/bin/env bash

echo "Install Homebrew packages"
brew update
brew tap Homebrew/bundle
brew bundle # may need to specify Brewfile in the scripts folder
brew cask cleanup
