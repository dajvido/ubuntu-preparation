#!/usr/bin/env bash

echo "Started installation of copyq"
echo "Add copyq repository"
sudo add-apt-repository ppa:hluk/copyq
echo "Update packages"
sudo apt update
echo "Install copyq"
sudo apt install -y copyq
echo "Succeed installation of copyq"
