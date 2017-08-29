#!/usr/bin/env bash

echo "Started installation of vim"
echo "Install vim"
sudo apt-get install vim
echo "Set vim as default editor"
echo -e '\n# Set vim as default editor
export EDITOR=vim
export VISUAL=vim' >> ~/.zshrc
echo "Succeed installation of vim"
