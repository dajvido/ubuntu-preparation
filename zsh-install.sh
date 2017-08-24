#!/usr/bin/env bash

echo "Started installation of zsh"
echo "Update packages"
sudo apt-get update
echo "Install zsh"
sudo apt-get install -y zsh
echo "Set zsh as a default shell"
chsh -s $(which zsh)
echo "Install ohh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "Succeed installation of zsh"
