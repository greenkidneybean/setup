#!/usr/bin/env bash

# run system preferences
echo "Setting system preferences
sh syst_prefs.sh

# setup dock
echo "Setting dock preferences"
sh dock.sh

# install applications view homebrew
sh homebrew.sh
