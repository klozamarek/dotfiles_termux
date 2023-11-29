#!/usr/bin/env bash

rm -rf "$XDG_CONFIG_HOME/nnn"
ln -sf "$DOTFILES/nnn" "$XDG_CONFIG_HOME"

