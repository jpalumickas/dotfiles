#!/bin/sh

source $ZSH/install/helpers/messages.sh

# === RBenv default gems symlink
#
# This must be first to install all dependencies.

echo_info "  Symlinking rbenv default gems."
ln -sf $ZSH/ruby/rbenv/default-gems ~/.rbenv/default-gems

# === Ruby versions

ruby_versions=( 3.0.2 )
ruby_global_version="3.0.2"

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

echo_info "    Making Ruby $ruby_global_version to be global."
rbenv global $ruby_global_version
