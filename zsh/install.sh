#!/bin/sh

# base16-shell
base16_shell_dir=~/.config/base16-shell

if [ ! -d "$base16_shell_dir" ]; then
  echo "  Installing base16-shell for you."
  git clone https://github.com/chriskempson/base16-shell.git $base16_shell_dir
else
  echo "  Updating base16-shell for you."
  cd $base16_shell_dir && git pull
fi
