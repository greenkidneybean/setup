#!/bin/sh

echo "Install Homebrew packages"
brew update
brew tap Homebrew/bundle
brew bundle
brew cask cleanup

echo "Setting dock apps"

# clears the dock of all apps, then adds your individual dock config
# config file:
# ~/Library/Preferences/com.apple.dock.plist

# for readability and ease of use
DEF_W="/usr/bin/defaults write"
PLB=/usr/libexec/PlistBuddy
OSA=/usr/bin/osascript

DOCK="com.apple.dock"

# rein in some wooly XML
APP_HEAD="<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>"
APP_TAIL="</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"

function set_dock_apps () {

    $DEF_W $DOCK 'checked-for-launchpad' -bool true

    # clear the dock of existing apps
    $DEF_W $DOCK 'persistent-apps' -array ''
    $DEF_W $DOCK 'persistent-others' -array ''
