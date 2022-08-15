#! /bin/bash

printf "\033[43;97m[check]\033[0m brew is installed...\n"
BREW_INSTALLED=$(which brew)

# If brew is not installed, install it
if [ -z "$BREW_INSTALLED" ]; then
    # https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f
    # Installs xcode commandline tools but not xcode itself
    # It is assumed that if brew is not installed then Xcode most likely
    # is not either and that we must install it too for brew to work
    if [$(uname -s) == "Darwin"]; then
        touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
        softwareupdate -i -a
        rm /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
    fi

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

HOMEBREW_BREWFILE=~/.Brewfile brew bundle install --global --no-lock --cleanup