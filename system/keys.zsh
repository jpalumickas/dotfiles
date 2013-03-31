# Pipe my public key to my clipboard. Fuck you, pay me.
alias pubkey="more ~/.ssh/id_rsa.public | pbcopy | echo '=> Public key copied to pasteboard.'"

# From https://github.com/jnunemaker/dotfiles/blob/master/bash/functions
# Appends your key to a server's authorized keys file
function authme
{
  if [ "$1" != "" ]; then
    ssh $1 'cat >>.ssh/authorized_keys' <~/.ssh/id_rsa.pub
  fi
}