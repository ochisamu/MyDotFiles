#!/bin/sh

mv ~/.zshrc ~/.zshrc.BAK
mv ~/.dir_colors ~/.dir_colors.BAK
mv ~/.vim ~/.vim.BAK
mv ~/.vimrc ~/.vimrc.BAK

ln -s ~/.dotfiles/my_zshrc ~/.zshrc
ln -s ~/.dotfiles/my_dir_colors ~/.dir_colors
ln -s ~/.dotfiles/my_vim ~/.vim
ln -s ~/.dotfiles/my_vimrc ~/.vimrc
