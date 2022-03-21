#!/bin/bash

########
# NVIM #
########
mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/undo"
ln -sf "$HOME/PersonalProjects/dotfiles/nvim/init.vim" "$HOME/.config/nvim"

#######
# X11 #
#######
rm -rf "$HOME/.config/X11"
ln -s "$HOME/PersonalProjects/dotfiles/X11" "$HOME/.config"
