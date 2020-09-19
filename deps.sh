#!/bin/bash

# ------ #
# run.sh #
# ------ #

echo '' # new line

# --------------------------------------------------------------------------------------------------- #

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# TODO: Ensure brew install successfully

# iTerm2
brew cask install iterm2

# NodeJS
# brew install node  # Latest
brew install node@12 # LTS

# TODO: Ensure node installed successfully

# Update NPM
npm install --global npm

# NPM Global Packages
npm install --global \
add-gitignore \
check-it-out \
diff-so-fancy \
g3l \
gtop \
gitmoji-cli \
npm-check \
npm-check-updates \
ntl \
licensed \
neovim \
open-cli \
emus \
typesync \
react-native-cli

# Yarn
brew install yarn

# --------------------------------------------------------------------------------------------------- #

# EOF #
