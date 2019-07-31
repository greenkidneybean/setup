#!/usr/bin/env bash

if [ ! command -v brew]
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cd ~
git clone https://github.com/greenkidneybean/.dotfiles
cd .dotfiles
sh setup_dotfiles.sh
