#!/bin/bash

# ------ #
# run.sh #
# ------ #

echo '' # new line

# --------------------------------------------------------------------------------------------------- #

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# TODO: Ensure brew install successfully

# Hack-NF
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# iTerm2
brew cask install iterm2

# Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Zsh syntax highlighting
brew install zsh-syntax-highlighting
echo "source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

# NodeJS
# brew install node  # Latest
brew install node@14 # LTS

# Add node to path
echo 'export PATH="/usr/local/opt/node@14/bin:$PATH"' >> ~/.zshrc

# TODO: Ensure node installed successfully

# Update NPM
npm install --global npm
rm -rf /usr/local/opt/node@14/lib/node_modules/npm

# NPM Global Packages
npm install --global \
check-it-out \
diff-so-fancy \
g3l \
gtop \
npm-check \
npm-check-updates \
ntl \
neovim \
open-cli \
emus \
react-native-cli \
pure-prompt

# Rbenv
brew install rbenv
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

# Verify rbenv install
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash

# Ruby
rbenv install 2.7.2
rbenv rehash
rbenv global 2.7.2 system

# Ruby Gems
sudo gem update --system
sudo gem update

sudo gem install \
neovim \
cocoapods

# Wget
brew install wget

# Hub
# brew install hub

# Yarn
brew install yarn

# LSD
brew install lsd

# Bat
brew install bat

# Neovim
brew install neovim

# VS Code
brew cask install visual-studio-code

# Watchman
brew install watchman

# --------------------------------------------------------------------------------------------------- #

# EOF #
