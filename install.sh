#!/usr/bin/env bash

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

