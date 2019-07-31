#!/usr/bin/env bash

echo "Install Homebrew packages"
brew update
brew tap Homebrew/bundle
brew bundle
brew cask cleanup
