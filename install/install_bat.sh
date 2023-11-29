#!/usr/bin/env bash

mkdir -p "$XDG_CONFIG_HOME/bat"
ln -sf "$DOTFILES/bat/config" "$XDG_CONFIG_HOME/bat/config"
