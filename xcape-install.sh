#!/usr/bin/env bash

echo "Started installation of xcape"
echo "Update packages"
sudo apt-get update
echo "Install dependencies"
sudo apt-get install -y git gcc make pkg-config libx11-dev libxtst-dev libxi-dev
echo "Clone xcape"
git clone https://github.com/alols/xcape.git xcape
cd xcape
echo "Make xcape"
make
echo "Install xcape"
sudo make install
cd ..

echo "Add keys mapping to profile"
cat <<EOT >> $HOME/.zprofile

# Add keys mapping (caps -> ctrl + esc)
setxkbmap -option 'caps:ctrl_modifier'
xcape -e 'Caps_Lock=Escape'
EOT
echo "Succeed installation of xcape"
