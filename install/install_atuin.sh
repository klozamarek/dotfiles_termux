#!/usr/bin/env bash

rm -rf "$XDG_CONFIG_HOME/atuin"
ln -sf "$DOTFILES/atuin" "$XDG_CONFIG_HOME"
