#!/usr/bin/env bash

rm -rf "$XDG_CONFIG_HOME/newsboat"
ln -sf "$DOTFILES/newsboat" "$XDG_CONFIG_HOME"
