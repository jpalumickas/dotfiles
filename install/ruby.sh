#!/bin/sh

source $ZSH/install/helpers/messages.sh

# === RBenv default gems symlink
#
# This must be first to install all dependencies.

echo_info "  Symlinking rbenv default gems."
ln -sf $ZSH/ruby/rbenv/default-gems ~/.rbenv/default-gems

# === Ruby versions

ruby_versions=( 2.2.3 2.3.1 )

echo_info "  Installing Ruby versions"

for ruby_version in "${ruby_versions[@]}"
do
  if rbenv versions | grep -q "$ruby_version";
  then
    echo_info "    Skipping! Ruby $ruby_version already exists."
  else
    rbenv install $ruby_version
    echo_success "    Installed Ruby $ruby_version"
  fi
done
