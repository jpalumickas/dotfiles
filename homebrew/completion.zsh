completion="$(brew --prefix)/share/zsh/site-functions"

if test -f $completion
then
  source $completion
fi
