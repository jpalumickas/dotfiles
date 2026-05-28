# Path-aware completion for `c`.
#   c <Tab>           → top-level projects under ~/Projects
#   c apps/<Tab>      → directories inside ~/Projects/apps
#   c apps/web/<Tab>  → directories inside ~/Projects/apps/web
#
# The helper looks at the current token: if it contains a `/`, it scans the
# parent directory; otherwise it lists top-level project dirs.

function __c_complete
    set -l token (commandline -ct)
    set -l base $HOME/Projects

    # Trailing `/` on each completion tells fish "this is a directory" —
    # so Tab fills in `foo/` without appending a space, letting you keep typing.
    if string match -q -- '*/*' $token
        # User has typed at least one `/` — complete inside the matched subdir.
        set -l prefix (string replace -r '/[^/]*$' '' -- $token)
        set -l search $base/$prefix
        test -d $search; or return
        for d in $search/*/
            echo $prefix/(path basename $d)/
        end
    else
        # No slash yet — top-level only.
        for d in $base/*/
            echo (path basename $d)/
        end
    end
end

complete -c c -f -a '(__c_complete)'
