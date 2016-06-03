#!/bin/sh

###
# Homebrew Plugins

# Add bundle tap
brew tap Homebrew/bundle

# Run Homebrew bundle.
brew bundle --global

# Remove outdated versions from the cellar
# brew cleanup
