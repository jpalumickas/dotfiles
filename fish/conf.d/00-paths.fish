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

# Android SDK. Gradle and the Android Gradle Plugin locate the SDK via
# ANDROID_HOME, so this has to be exported for non-interactive shells too —
# `expo run:android` and `eas build --local -p android` both fail with
# "SDK location not found" without it. ANDROID_SDK_ROOT is deprecated but
# still read by some older tooling.
for android_sdk in $HOME/Library/Android/sdk $HOME/Android/Sdk
    if test -d $android_sdk
        set -gx ANDROID_HOME $android_sdk
        set -gx ANDROID_SDK_ROOT $android_sdk
        # cmdline-tools is the modern replacement for tools/ and tools/bin;
        # list both so this works before and after an SDK manager upgrade.
        # Listed low-priority first because -P prepends: the last one added
        # ends up first. platform-tools must win (adb), and emulator/ must
        # beat the deprecated emulator binary still sitting in tools/.
        for android_bin in tools/bin tools cmdline-tools/latest/bin emulator platform-tools
            test -d $android_sdk/$android_bin; and fish_add_path -gP $android_sdk/$android_bin
        end
        break
    end
end
