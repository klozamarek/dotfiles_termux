#!/usr/bin/env bash

rm -rf "$XDG_CONFIG_HOME/stig"
ln -s "$DOTFILES/stig" "$XDG_CONFIG_HOME"
