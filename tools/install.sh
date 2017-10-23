#!/bin/sh

# Check if git and wget installed
if ! (type git > /dev/null); then
    echo "ERROR: git required but not installed!"
    exit 0
fi

# Install Oh My VIM
export OHMYVIM=$HOME/.oh-my-vim
rm -rf $OHMYVIM
git clone https://github.com/crazydyz/oh-my-vim.git ~/.oh-my-vim
mv ~/.vimrc ~/.vimrc_old
mv ~/.vim ~/.vim_old
cp $OHMYVIM/vimrc/user.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.oh-my-vim/bundle/Vundle.vim

