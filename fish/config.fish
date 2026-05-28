# ~/.config/fish/config.fish
# Top-level orchestration only. Real config lives in conf.d/*.fish so each
# concern can be enabled/disabled independently and fish autoloads them.

if status is-interactive
    # Suppress the default greeting; Starship handles the prompt.
    set -g fish_greeting

    # Homebrew prefix differs on Apple Silicon vs Intel; pick whichever exists.
    for brew_prefix in /opt/homebrew /usr/local
        if test -x $brew_prefix/bin/brew
            eval ($brew_prefix/bin/brew shellenv | string collect)
            break
        end
    end
end

# Sensible PATH additions — kept here so they apply to non-interactive shells too
# (scripts, editor terminals, etc.).
fish_add_path -gP $HOME/.local/bin
fish_add_path -gP $HOME/.dotfiles/bin
fish_add_path -gP $HOME/.cargo/bin

# Editor defaults — used by git, fzf, less, et al.
set -gx EDITOR cursor
set -gx VISUAL cursor
set -gx PAGER less
set -gx LESS '-R --mouse --wheel-lines=3'

# Locale — avoids "fallback to C" warnings from CLI tools that ship with macOS.
set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
