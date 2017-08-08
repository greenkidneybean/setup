#!/bin/sh

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

    # add folders to dock

    FOLDER_HEAD="<dict><key>tile-data</key><dict><key>arrangement</key><integer>0</integer><key>displayas</key><integer>1</integer><key>file-data</key><dict><key>_CFURLString</key><string>"
    FOLDER_TAIL="</string><key>_CFURLStringType</key><integer>0</integer></dict><key>preferreditemsize</key><integer>-1</integer><key>showas</key><integer>3</integer></dict><key>tile-type</key><string>directory-tile</string></dict>"

    $DEF_W $DOCK 'persistent-others' -array-add "$FOLDER_HEAD$HOME/Downloads$FOLDER_TAIL"

    $OSA -e 'tell application "Dock" to quit'

}

set_dock_apps
