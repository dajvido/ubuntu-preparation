#!/usr/bin/env bash

echo "Started installation of docker"
echo "Download docker installation script"
curl -fsSL test.docker.com -o test-docker.sh
echo "Install docker"
sudo sh test-docker.sh
echo "Add current user to docker group"
sudo usermod -aG docker $USER
echo "Clearing"
rm test-docker.sh
echo "Succeed installation of docker"
