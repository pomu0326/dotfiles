#!/bin/bash
set -x

SCRIPT_DIR=$(cd $(dirname $0); pwd)

## nvim
mkdir -p ~/.config
ln -snf "$SCRIPT_DIR/nvim" ~/.config/nvim

## dotfiles
cat <<EOS |
.gitconfig
.bash_profile
.bashrc
EOS
while read -r dotfile
do
    ln -snf "$SCRIPT_DIR/$dotfile" ~/$dotfile
done
