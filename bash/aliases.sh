# Bash-only aliases. Cross-shell (bash + fish) aliases live in
# ~/.dotfiles/shell/aliases.sh; this file is for bash-specific tweaks.

# cd shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Always-on flags
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -h'

# Print PATH one entry per line
alias path='echo -e "${PATH//:/\n}"'

# ls family — prefer eza (modern Rust replacement), then exa (its
# unmaintained predecessor), then plain ls. Each branch keeps the same
# user-facing aliases so muscle memory works regardless of what's installed.
if command -v eza >/dev/null 2>&1; then
    alias ls='eza'
    alias ll='eza -lh --git'              # long, human sizes, no hidden
    alias la='eza -lah --git'             # + hidden (no . / ..)
    alias lla='eza -laah --git'           # + . and ..
    alias l='eza'
elif command -v exa >/dev/null 2>&1; then
    alias ls='exa'
    alias ll='exa -lh --git'
    alias la='exa -lah --git'
    alias lla='exa -laah --git'
    alias l='exa'
else
    alias ls='ls -G'                      # BSD ls color (macOS); ignored on GNU
    alias ll='ls -lh'
    alias la='ls -lAh'
    alias lla='ls -lah'
    alias l='ls -CF'
fi
