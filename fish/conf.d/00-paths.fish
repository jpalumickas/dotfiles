# Tool-installed paths that should be active for non-interactive shells too.
# Keep this list small; anything interactive belongs in 10-interactive.fish.

# Homebrew shellenv. Must run BEFORE 10-interactive.fish because that file
# does `type -q starship` etc. — when Ghostty launches fish directly via
# `command = /opt/homebrew/bin/fish`, PATH starts fresh with no brew prefix.
# Conf.d files run in alphabetical order, then config.fish, so this must
# live here (not in config.fish) to be available to siblings in conf.d/.
for brew_prefix in /opt/homebrew /usr/local /home/linuxbrew/.linuxbrew
    if test -x $brew_prefix/bin/brew
        eval ($brew_prefix/bin/brew shellenv | string collect)
        break
    end
end
