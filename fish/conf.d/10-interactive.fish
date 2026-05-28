# Interactive-only setup: prompt, shell integrations, key bindings.
# Guarded so that scripts and editor shells don't pay startup cost.

status is-interactive; or exit 0

# Starship — replaces fish's default prompt.
if type -q starship
    starship init fish | source
end

# Zoxide — `z <dir>` smart-jumping, `zi` interactive picker.
if type -q zoxide
    zoxide init fish --cmd cd | source
end

# fzf — Ctrl-T (files), Ctrl-R (history), Alt-C (cd) bindings.
if type -q fzf
    fzf --fish 2>/dev/null | source
end

# atuin — better shell history with sync; only init if present.
if type -q atuin
    atuin init fish --disable-up-arrow | source
end

# Use vim bindings — comment out if you prefer the default emacs-style.
# fish_vi_key_bindings
