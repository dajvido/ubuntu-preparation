#!/usr/bin/env bash

if [[ $UID != 0 ]]; then
    echo "Aborted! Please run the script with sudo."
    exit 1
fi

echo "Started preparation..."
echo "Create ~/Programs dir for installations"
mkdir -p $HOME/Programs
cd $HOME/Programs
echo "Started installation..."
sh -c "$(curl -fsSL https://raw.github.com/dajvido/ubuntu-preparation/asdf-install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/dajvido/ubuntu-preparation/copyq-install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/dajvido/ubuntu-preparation/docker-install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/dajvido/ubuntu-preparation/xcape-install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/dajvido/ubuntu-preparation/zsh-install.sh)"
cd $HOME
echo "Finished installation"

echo "WARNING: Log out and back in to take effect!"
