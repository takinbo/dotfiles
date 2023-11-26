#!/usr/bin/env bash

# Create symbolic links from the home directory to the desired dotfiles

set -e

cd "$(dirname "${BASH_SOURCE}")"
CWD=$(pwd)

files="bash_aliases"

for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${CWD}/.${file} $HOME/.${file}
done