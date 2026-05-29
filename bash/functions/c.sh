# `c` — cd into ~/Projects, or into a path within it.
# Mirrors fish/functions/c.fish + fish/completions/c.fish.
#
#   c                  → ~/Projects
#   c foo              → ~/Projects/foo
#   c foo/bar          → ~/Projects/foo/bar
#
# Tab completion walks one directory at a time so you can drill into nested
# subdirs without typing the path by hand.

c() {
    if [[ -z "${1:-}" ]]; then
        cd "$HOME/Projects" || return
    else
        cd "$HOME/Projects/$1" || return
    fi
}

_c_complete() {
    local cur="${COMP_WORDS[COMP_CWORD]}"
    local base="$HOME/Projects"
    local prefix dir

    if [[ "$cur" == */* ]]; then
        prefix="${cur%/*}"
        dir="$base/$prefix"
    else
        prefix=""
        dir="$base"
    fi

    [[ -d "$dir" ]] || return

    # Each candidate keeps a trailing `/` so Tab fills `foo/` without adding
    # a space (lets you keep typing or Tab again into subdirs).
    COMPREPLY=()
    local d name entry
    for d in "$dir"/*/; do
        [[ -d "$d" ]] || continue
        name="${d%/}"
        name="${name##*/}"
        if [[ -n "$prefix" ]]; then
            entry="$prefix/$name/"
        else
            entry="$name/"
        fi
        [[ "$entry" == "$cur"* ]] && COMPREPLY+=("$entry")
    done

    # bash equivalent of fish's trailing-slash convention: don't add a space.
    # bash 4+ only; harmless on 3.2 because of `2>/dev/null`.
    compopt -o nospace 2>/dev/null
}
complete -F _c_complete c
