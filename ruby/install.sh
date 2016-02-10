#!/bin/sh

# Bundler settings
number_of_cores=$(sysctl -n hw.ncpu)
bundle config --global jobs $((number_of_cores - 1))

# Heroku
if test ! $(which heroku)
then
  echo "  Installing heroku-toolbelt for you."
  brew install heroku-toolbelt
fi

echo "  Installing heroku-config plugin for you."
heroku plugins:install git://github.com/ddollar/heroku-config.git


# rbenv-default-gems
rbenv_default_gems_dir=~/.rbenv/plugins/rbenv-default-gems

if [ ! -d "$rbenv_default_gems_dir" ]; then
  echo "  Installing rbenv-default-gems for you."
  git clone https://github.com/sstephenson/rbenv-default-gems.git $rbenv_default_gems_dir
else
  echo "  Updating rbenv-default-gems for you."
  cd $rbenv_default_gems_dir && git pull
fi
