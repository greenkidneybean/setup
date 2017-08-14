#!/usr/bin/env bash

# installs packages listed in Brewfile

brew update
brew tap Homebrew/bundle
brew bundle
brew cask cleanup

echo "Setup Python2 environment"
28	pip install -r pythonModules.txt

echo "Setup Python3 environment"
28	pip3 install -r pythonModules.txt
