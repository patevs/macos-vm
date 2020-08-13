#!/bin/bash

# ------ #
# run.sh #
# ------ #

echo '' # new line

# --------------------------------------------------------------------------------------------------- #

# Check environment

# Ensure wget command exists
if ! [ -x "$(command -v wget)" ]; then
  echo 'Error: wget is not installed. Exiting...' >&2
  exit 1
fi

# --------------------------------------------------------------------------------------------------- #

# Download installer script
wget https://raw.githubusercontent.com/myspaghetti/macos-virtualbox/master/macos-guest-virtualbox.sh

# Run installer script
bash ./macos-guest-virtualbos.sh

# --------------------------------------------------------------------------------------------------- #

# EOF #
