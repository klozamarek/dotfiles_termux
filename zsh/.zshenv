#!/usr/bin/env zsh

###############################
# EXPORT ENVIRONMENT VARIABLE #
###############################

export DOTFILES="$HOME/dotfiles_termux"

# XDG
export XDG_CONFIG_HOME="$HOME/.config"                  # for dotfiles
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"     # for user specific data
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"          # for user cached files

# editor
export EDITOR="nvim"
export VISUAL="nvim"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"                   
export HISTFILE="$ZDOTDIR/.zhistory"                    # History filepath
export HISTSIZE=10000                                   # Maximum events for internal history
export SAVEHIST=10000                                   # Maximum events in history file

# other software
export VIMCONFIG="$XDG_CONFIG_HOME/nvim"
export SCREENSHOT="$HOME/Documents/images/screenshots"

# Man pages
export MANPAGER='nvim +Man!'

# fzf and ripgrep
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# default browser
export BROWSER="/usr/bin/brave"
