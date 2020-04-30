#!/bin/bash
git clone https://github.com/imto1/ArmingVim.git
mv ArmingVim ~/.vim
mv ~/.vim/vimrc ~/.vimrc
rm ~/.vim/LICENSE ~/.vim/README.md

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Ignore Vim errors on first launch. After Vim opens, run PlugInstall command."
