#!/bin/bash

########
# nvim #
########

mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"

ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim"

rm -rf "$HOME/.config/X11"
ln -s "$HOME/dotfiles/X11" "$HOME/.config"

mkdir -p "$HOME/.config/zsh" 
ln -sf "$HOME/dotfiles/zsh/.zshenv" "$HOME"
ln -sf "$HOME/dotfiles/zsh/.zshrc" "$HOME/.config/zsh"
rm -rf "$HOME/.config/zsh/external"
ln -sf "$HOME/dotfiles/zsh/external" "$HOME/.config/zsh"

#########
# Fonts # 
######### 

mkdir -p "$XDG_DATA_HOME" 
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

##########
# Neovim #
# Plugin # 
# Manager#
##########

if [ ! -f "$DOTFILES/nvim/autoload/plug.vim" ]; then     curl -fLo "$DOTFILES/nvim/autoload/plug.vim" --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
fi 

# Create the autoload directory and link plug.vim
mkdir -p "$XDG_CONFIG_HOME/nvim/autoload" 
ln -sf "$DOTFILES/nvim/autoload/plug.vim" "$XDG_CONFIG_HOME/nvim/autoload/plug.vim"

# Install (or update) all the plugins 
nvim --noplugin +PlugUpdate +qa 

########
# tmux #
########


mkdir -p "$XDG_CONFIG_HOME/tmux"
ln -sf "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"

[ ! -d "$XDG_CONFIG_HOME/tmux/plugins/tpm" ] \
&& git clone https://github.com/tmux-plugins/tpm \
"$XDG_CONFIG_HOME/tmux/plugins/tpm"
