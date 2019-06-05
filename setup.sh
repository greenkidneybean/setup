#!/usr/bin/env bash

# run system preferences
echo "Setting system preferences
sh scripts/syst_prefs.sh

# setup dock
sh scripts/dock.sh

# install applications view homebrew
sh scripts/homebrew.sh
