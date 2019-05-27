#!/usr/bin/env bash

# Ask for password
sudo -v

echo "Installing Xcode Command Line"
xcode-select --install

echo "Disable startup sounds"
sudo nvram SystemAudioVolume=" "

echo "Disable transparency in the menu bar and elsewhere"
defaults write com.apple.universalaccess reduceTransparency -bool true

echo "Check for software updates daily"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

echo "Disable smart quotes"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

echo "Disable smart dashes"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

echo "Disable iTunes from opening when using media keys"
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist 2> /dev/null

echo "Show hidden files"
defaults write com.apple.finder AppleShowAllFiles -bool true

echo "Show all extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Show path bar in Finder"
defaults write com.apple.finder ShowPathbar -bool true

echo "Do not warn when altering extensions"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "No .DStore files"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "Auto-hide Dock"
defaults write com.apple.dock autohide -bool true

echo "Disable Natural style scroll"
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

