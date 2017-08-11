#!/usr/bin/env bash

# installs packages listed in Brewfile

brew update
brew tap Homebrew/bundle
brew bundle
brew cask cleanup
