#!/bin/sh

if test ! $(which rbenv)
then
  echo "  Installing rbenv for you."
  brew install rbenv > /tmp/rbenv-install.log
fi

if test ! $(which ruby-build)
then
  echo "  Installing ruby-build for you."
  brew install ruby-build > /tmp/ruby-build-install.log
fi

# Bundler settings
number_of_cores=$(sysctl -n hw.ncpu)
bundle config --global jobs $((number_of_cores - 1))

# Heroku
brew install heroku-toolbelt
heroku plugins:install git://github.com/ddollar/heroku-config.git

# Ruby gems
gem install rubocop
gem install scss-lint
gem install byebug
gem install debugger
