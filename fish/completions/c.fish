# `-f` disables file fallback so only project names appear.
# `*/` globs only directories under ~/Projects.
complete -c c -f -a "(path basename ~/Projects/*/)"
