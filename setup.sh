#!/usr/bin/env bash

echo "Install Homebrew packages"
brew update
brew tap Homebrew/bundle
brew bundle
brew cask cleanup

# setup dock
echo "Setting dock preferences
sh dock.sh

# run system preferences
echo "Setting system preferences
sh syst_prefs.sh
