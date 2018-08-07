#!/bin/sh
# Requires sudo.

echo "🍻 Installing brew"
usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "👨‍🌾 Updating brew"
brew update
brew upgrade
brew doctor
brew install cask
brew doctor

# homebrew cask updater: https://github.com/buo/homebrew-cask-upgrade
brew tap buo/cask-upgrade

# git
echo "🛠 Installing git & completions"
brew install git
brew install bash-completion

# Add to bash profile.
echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile

# git config
# TODO 

# Android Studio
echo "🤖 Android Studion"
brew cask install android-studio

# golang

# VS Code
brew install visual-studio-code

# Addition
# Slack / Skype
