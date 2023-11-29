#!/usr/bin/env bash

mkdir -p "$ZDOTDIR"

ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$ZDOTDIR"
ln -sf "$DOTFILES/zsh/aliases" "$ZDOTDIR/aliases"
ln -sf "$DOTFILES/zsh/external" "$ZDOTDIR"
