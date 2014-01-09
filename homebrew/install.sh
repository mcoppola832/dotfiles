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
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)" > /tmp/homebrew-install.log
fi

# Install homebrew packages
brew install grc coreutils spark git grc coreutils ack findutils gnu-tar tmux htop-osx ctags nginx gnu-sed mobile-shell nmap tree wget watch phantomjs macvim

# Stuff we use for A2 / node.js development
brew install mongo
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
brew install imagemagick

exit 0
