#! /bin/bash

printf "\033[43;97m[check]\033[0m brew is installed...\n"
BREW_INSTALLED=$(which brew)

# If brew is not installed, install it
if [ -z "$BREW_INSTALLED" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi