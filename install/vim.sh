#!/bin/sh

# vim bundle
vim_bundle_dir=~/.vim/bundle

if [ ! -d "$vim_bundle_dir/Vundle.vim" ]; then
  echo "  Installing vim Vundle for you."
  git clone https://github.com/VundleVim/Vundle.vim.git $vim_bundle_dir/Vundle.vim
else
  echo "  Updating vim bundle for you."
  cd $vim_bundle_dir/Vundle.vim && git pull
fi
