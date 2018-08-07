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

echo "🚀 Go super-user!"
sudo su
# Add to bash profile.
echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile

# git config
# TODO 


# Android Studio
echo "🤖 Android Studio"
brew cask install android-studio

# golang

# VS Code
brew cast install visual-studio-code

# Addition
# Slack / Skype

echo "➡️ Almost done!"
echo "Don't foret to:"
echo "⭕️ Add Github public key: (pbcopy ~/.id_rsa.pub)"
echo "⭕️ Install SDKs for Android development"
echo "........"
echo "🙌 Get excited!"