#!/bin/sh

source $ZSH/install/helpers/messages.sh

# === Base16-shell

base16_shell_dir=~/.config/base16-shell

if [ ! -d "$base16_shell_dir" ]; then
  echo_info "  Installing base16-shell for you."
  git clone https://github.com/chriskempson/base16-shell.git $base16_shell_dir
else
  echo_info "  Updating base16-shell for you."
  cd $base16_shell_dir && git pull
fi

# === Heroku

if test ! $(which heroku)
then
  echo_info "  Installing heroku-toolbelt for you."
  brew install heroku-toolbelt

  echo_info "  Installing heroku-config plugin for you."
  heroku plugins:install git://github.com/ddollar/heroku-config.git
fi

# === Bundler settings

number_of_cores=$(sysctl -n hw.ncpu)
bundle config --global jobs $((number_of_cores - 1))
