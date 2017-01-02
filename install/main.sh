#!/bin/sh

source $ZSH/install/helpers/messages.sh

# === Homebrew

# Check for Homebrew
if test ! $(which brew)
then
  echo_info "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi

  echo_info "  Installing Homebrew bundle tap."
  brew tap Homebrew/bundle
else
  echo_info "  Updating Homebrew."
  brew update
fi


# === RBenv default gems plugin

rbenv_default_gems_dir=~/.rbenv/plugins/rbenv-default-gems

if [ ! -d "$rbenv_default_gems_dir" ]; then
  echo_info "  Installing rbenv-default-gems for you."
  git clone https://github.com/sstephenson/rbenv-default-gems.git $rbenv_default_gems_dir
else
  echo_info "  Updating rbenv-default-gems for you."
  cd $rbenv_default_gems_dir && git pull
fi
