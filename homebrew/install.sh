#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi
  
fi

# Install Homebrew-Cask
brew install caskroom/cask/brew-cask

# Install Homebrew-Bundle
brew tap Homebrew/bundle

# Change install location to something more sensible
echo "export HOMEBREW_CASK_OPTS='--appdir=/Applications --caskroom=/etc/Caskroom'" >> ~/.bashrc

# Install dependencies listed in ~/Brewfile
brew bundle

exit 0