#!/usr/bin/env bash

mkdir -p "$XDG_CONFIG_HOME/calcurse"
ln -sf "$DOTFILES/calcurse/conf" "$XDG_CONFIG_HOME/calcurse/conf"
ln -sf "$DOTFILES/calcurse/keys" "$XDG_CONFIG_HOME/calcurse/keys"
