#!/usr/bin/env bash

echo "Started installation of asdf"
echo "Update packages"
sudo apt-get update
echo "Install dependencies"
sudo apt-get install -y automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev
echo "Clone & install asdf"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.3.0
echo -e '\n# Initial asdf on shell initial
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
echo "Succeed installation of asdf"
