#!/usr/bin/env bash

echo "Started installation of vim"
echo "Install dependencies"
sudo apt-get install -y liblua5.1-dev luajit libluajit-5.1
echo "Clone vim"
git clone https://github.com/vim/vim.git vim
cd vim/src
./configure --enable-gui=auto --enable-gtk2-check --enable-luainterp --with-luajit --with-x --prefix=/usr --with-features=big
echo "Make and install"
make
sudo make install
cd ../..
echo "Set vim as default editor"
echo -e '\n# Set vim as default editor
export EDITOR=vim
export VISUAL=vim' >> ~/.zshrc
echo "Succeed installation of vim"
