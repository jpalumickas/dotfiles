# Shared aliases sourced from a POSIX-ish file so zsh/bash can read the same
# definitions. Fish parses each `alias x='y'` line into a wrapper function.
set -l shared $HOME/.dotfiles/shell/aliases.sh
test -f $shared; and source $shared
