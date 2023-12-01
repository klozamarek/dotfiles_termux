#!/usr/bin/env bash

mkdir -p "$XDG_CONFIG_HOME/ranger"
ln -sf "$DOTFILES/ranger/rc.conf" "$XDG_CONFIG_HOME/ranger/rc.conf"
ln -sf "$DOTFILES/ranger/rifle.conf" "$XDG_CONFIG_HOME/ranger/rifle.conf"
