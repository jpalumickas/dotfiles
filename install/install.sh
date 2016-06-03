#!/bin/bash

if [ "$(uname -s)" == "Darwin" ]
then
  $ZSH/install/main.sh
  $ZSH/install/brew.sh
  $ZSH/install/node_packages.rb
  $ZSH/install/vim.sh
  $ZSH/install/other.sh
fi
