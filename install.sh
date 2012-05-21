#!/bin/sh

mv ~/.zshrc ~/.zshrc.BAK
mv ~/.dir_colors ~/.dir_colors.BAK
mv ~/.vim ~/.vim.BAK
mv ~/.vimrc ~/.vimrc.BAK

ln -s ${PWD}/my_zshrc ~/.zshrc
ln -s ${PWD}/my_dir_colors ~/.dir_colors
ln -s ${PWD}/my_vim ~/.vim
ln -s ${PWD}/my_vimrc ~/.vimrc
