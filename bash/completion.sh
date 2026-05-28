# Source bash-completion@2 from the first path that exists.
# Covers Apple Silicon brew, Intel brew, Linuxbrew, and native distro paths.

for bc in \
    /opt/homebrew/etc/profile.d/bash_completion.sh \
    /usr/local/etc/profile.d/bash_completion.sh \
    /home/linuxbrew/.linuxbrew/etc/profile.d/bash_completion.sh \
    /usr/share/bash-completion/bash_completion \
    /etc/bash_completion; do
    if [[ -r "$bc" ]]; then
        source "$bc"
        break
    fi
done
