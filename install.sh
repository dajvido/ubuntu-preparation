#!/usr/bin/env bash

if [[ $UID != 0 ]]; then
    echo "Aborted! Please run the script with sudo."
    exit 1
fi

echo "Started preparation..."
echo "Update packages"
sudo apt-get update
echo "Install dependencies"
sudo apt-get install -y curl
echo "Create ~/Programs dir for installations"
mkdir -p $HOME/Programs
cd $HOME/Programs
echo "Beginning installation..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/dajvido/ubuntu-preparation/master/asdf-install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/dajvido/ubuntu-preparation/master/copyq-install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/dajvido/ubuntu-preparation/master/docker-install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/dajvido/ubuntu-preparation/master/nvm-install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/dajvido/ubuntu-preparation/master/xcape-install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/dajvido/ubuntu-preparation/master/zsh-install.sh)"
cd $HOME
echo "Finished installation"

echo "
WARNING: Log out and back in to take effect!
"
