#!/usr/bin/env bash

if [ "$(which zsh)" != "$SHELL" ]
then
  chsh -s $(which zsh)
fi

# Set ZSH if we're not in zsh environment.
if [ -z "$ZSH" ]; then
  export ZSH=$HOME/.dotfiles
fi

if [ "$(uname -s)" == "Darwin" ]
then
  $ZSH/install/main.sh
  $ZSH/install/brew.sh
  $ZSH/install/node_packages.rb
  $ZSH/install/vim.sh
  $ZSH/install/ruby.sh
  $ZSH/install/other.sh
fi
