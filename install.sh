#!/bin/bash
########
# nvim #
########
mkdir -p "XDG_CONFIG_HOME/nvim"
mkdir -p "XDG_CONFIG_HOME/nvim/undo"
ln -sf "$HOME/dotfiles/nvim/init.vim" "XDG_CONFIG_HOME/nvim/init.vim"
rm -rf "XDG_CONFIG_HOME/X11"
ln -s "$HOME/dotfiles/X11" "XDG_CONFIG_HOME"
mkdir -p "XDG_CONFIG_HOME/zsh"
ln -sf "$HOME/dotfiles/zsh/.zshenv" "$HOME"
ln -sf "$HOME/dotfiles/zsh/.zshrc" "XDG_CONFIG_HOME/zsh"
ln -sf "$HOME/dotfiles/zsh/aliases" "XDG_CONFIG_HOME/zsh/aliases"
rm -rf "XDG_CONFIG_HOME/zsh/external"
ln -sf "$HOME/dotfiles/zsh/external" "XDG_CONFIG_HOME/zsh"

######
# i3 #
######

rm -rf "XDG_CONFIG_HOME/i3"
ln -s "$HOME/dotfiles/i3" "XDG_CONFIG_HOME"
fpath=($ZDOTDIR/external $fpath)

#########
# Fonts #
#########

mkdir -p"$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "XDG_DATA_HOME"
