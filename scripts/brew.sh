#!/usr/bin/env bash
echo "running brew.sh"

# installs packages listed in Brewfile
echo "brew update"
brew update

brew tap Homebrew/bundle
brew bundle
brew cask cleanup

