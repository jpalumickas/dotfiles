#!/bin/sh

source $ZSH/install/helpers/messages.sh

# === Vundle

vim_bundle_dir=~/.vim/bundle
vundle_dir=$vim_bundle_dir/Vundle.vim

if [ ! -d "$vundle_dir" ]; then
  echo_info "  Installing vim Vundle."
  git clone https://github.com/VundleVim/Vundle.vim.git $vundle_dir
else
  echo_info "  Updating vim Vundle."
  cd $vundle_dir && git pull
fi
