# Git
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -a -v'
alias gco='git checkout'
alias gb='git branch'

# JS
alias yi='yarn install'
alias yui='yarn upgrade-interactive --latest'
alias yupg='yarn upgrade'

alias pnui='pnpm upgrade --interactive --latest'

# Utils
alias week='date +%V'

# Recursively delete `.DS_Store` files
alias cleanup-ds-store="find . -type f -name '*.DS_Store' -ls -delete"

alias rrfinder="killall -KILL Finder"
alias rrdock="killall -KILL Dock" # launchctl stop com.apple.Dock.agent
alias rrmenubar="killall -KILL SystemUIServer"
