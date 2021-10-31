# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ "$EDITOR" == "" ]] ; then
  # Use VIM for my editor.
  export EDITOR='vim'
fi

if [[ "$BROWSER" == "" ]] ; then
  # Use Safari for my browser.
  export BROWSER='Safari'
fi
