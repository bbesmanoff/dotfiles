#!/usr/bin/env bash

# Initialize the submodules
git submodule init
git submodule update

# Figure out where the dotfile check out is located
dotfile_location=`pwd`

# Symlink the files to the home directory
ln -s $dotfile_location/aliases $HOME/.aliases 
ln -s $dotfile_location/functions $HOME/.functions
ln -s $dotfile_location/inputrc $HOME/.inputrc 
ln -s $dotfile_location/oh-my-zsh $HOME/.oh-my-zsh 
ln -s $dotfile_location/rspec $HOME/.rspec 
ln -s $dotfile_location/screenrc $HOME/.screenrc 
ln -s $dotfile_location/ctags $HOME/.ctags
ln -s $dotfile_location/tmux.conf $HOME/.tmux.conf
ln -s $dotfile_location/tmuxifier $HOME/.tmuxifier
ln -s $dotfile_location/vim $HOME/.vim 
ln -s $dotfile_location/vimrc $HOME/.vimrc 
ln -s $dotfile_location/zshrc $HOME/.zshrc 
