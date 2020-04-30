#!/bin/bash
cd ~
clear
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

touch .vimrc
echo "syntax on" >> .vimrc
echo "filetype on" >> .vimrc
echo "call plug#begin('~/.vim/plugged')" >> .vimrc
echo "Plug 'junegunn/vim-easy-align'" >> .vimrc
echo "call plug#end()" >> .vimrc
