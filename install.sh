#!/usr/bin/bash

mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"
ln -sf "$HOME/dotfiles_termux/nvim/init.vim" "$HOME/.config/nvim"

mkdir -p "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles_termux/zsh/.zshenv" "$HOME"
ln -sf "$HOME/dotfiles_termux/zsh/.zshrc" "$HOME/.config/zsh"