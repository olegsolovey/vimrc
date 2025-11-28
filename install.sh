#!/usr/bin/env bash

# compile vim
git clone https://github.com/vim/vim.git
cd vim/src
sed -i '/CONF_OPT_PYTHON3 = --enable-python3interp=dynamic/s/^#//g' Makefile
make
sudo make install
cd ../../
rm -rf vim

# backup
mv ~/.vim ~/.vim.orig
mv ~/.vimrc ~/.vimrc.orig

# clone the repo
git clone https://github.com/olegsolovey/vimrc.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
mkdir ~/.vim/tmp

# setup vundle
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim

vim -c 'PluginInstall' -c 'qa!'

# YouCompleteMe C++ autocompletion
#cd ~/.vim/bundle/YouCompleteMe/
#./install.py --clangd-completer
