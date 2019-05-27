/usr/bin/env bash

# Ask for authentication
sudo -v

# Check for brew
if test ! $(which brew); then
	echo "Installing homebrew..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap caskroom/cask
brew update
brew upgrade --all

brew install bash
brew install bash-completion2
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
chsh -s /usr/local/bin/bash

brew cask install alfred
brew cask install brave-browser
brew cask install eclipse-java
brew cask install firefox
brew cask install iterm2
brew cask install jetbrains-toolbox
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install sublime-text
brew cask install telegram
brew cask install whatsapp
brew cask install zsh

brew cleanup

