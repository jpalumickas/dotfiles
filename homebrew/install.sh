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

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install wget with IRI support
brew install wget --enable-iri

# Install everything else
brew install grc
brew install spark
brew install git
brew install hub

# Remove outdated versions from the cellar
brew cleanup

exit 0
