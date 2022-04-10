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


########
#  i3  #
########
rm -rf "$HOME/.config/i3"
ln -s "$HOME/PersonalProjects/dotfiles/i3" "$HOME/.config"

#######
# zsh #
#######
mkdir -p "$HOME/.config/zsh"
ln -sf "$HOME/PersonalProjects/dotfiles/zsh/.zshenv" "$HOME"
ln -sf "$HOME/PersonalProjects/dotfiles/zsh/.zshrc" "$HOME/.config/zsh"
ln -sf "$HOME/PersonalProjects/dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"

rm -rf "$HOME/.config/zsh/external"
ln -sf "$HOME/PersonalProjects/dotfiles/zsh/external" "$HOME/.config/zsh"
