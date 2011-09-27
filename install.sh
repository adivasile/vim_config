#!/bin/bash
mkdir ~/.vim-tmp
ln -s ~/vim_config ~/.vim
echo "source ~/vim_config/vimrc" >> ~/.gvimrc
echo "source ~/vim_config/vimrc" >> ~/.vimrc

