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

if heroku plugins | grep -q "heroku-config";
then
  echo_info "  Updating heroku-config plugin for you."
  heroku plugins:update heroku-config
else
  echo_info "  Installing heroku-config plugin for you."
  heroku plugins:install git://github.com/ddollar/heroku-config.git
fi

# === Bundler settings

echo_info "  Configuring bundler jobs."
number_of_cores=$(sysctl -n hw.ncpu)
bundle config --global jobs $((number_of_cores - 1))

# === Projects directory

projects_dir=~/Projects

if [[ ! -e $projects_dir ]]; then
  mkdir $projects_dir
  echo_success "  Created Projects directory."
fi
