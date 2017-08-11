# Reproducible Mac OS X Environment

## Install command line tools

Install X-code:

    xcode-select --install

## Link dotfiles

## Homebrew

Install [Homebrew](https://brew.sh/) and packages listed in Brewfile

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    sh brew.sh

## Ruby

Set [Ruby](https://www.ruby-lang.org/en/downloads/) environment to current stable version

    rbenv install 2.4.1

## OS X defaults

This could definitely use some work (combine with dock.sh)

    sh syst_prefs.sh

## TODO:
 - System preferences
  - Dark mode
  - Wallpaper
 - Dotfiles
 - Python modules
 - Zsh
