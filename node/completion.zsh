completion="$(brew --prefix)/etc/bash_completion.d/nvm"

if test -f $completion
then
  source $completion
fi
