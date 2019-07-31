#!/usr/bin/env bash

echo "Install Homebrew packages"
brew update
brew tap Homebrew/bundle
brew bundle --file=scripts/Brewfile
brew cask cleanup
