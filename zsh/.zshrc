fpath=($ZDOTDIR/external $fpath)

export USERNAME=$LOGNAME

# +------------+
# | NAVIGATION |
# +------------+

setopt AUTO_CD                  # Go to folder path without using cd.

setopt AUTO_PUSHD               # Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS        # Do not store duplicates in the stack.
setopt PUSHD_SILENT             # Do not print the directory stack after pushd or popd.

setopt CORRECT                  # Spelling correction
setopt CDABLE_VARS              # Change directory to a path stored in a variable.
setopt EXTENDED_GLOB            # Use extended globbing syntax.

source $DOTFILES/zsh/external/bd.zsh

# +---------+
# | HISTORY |
# +---------+

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.

# +---------+
# | ALIASES |
# +---------+

source "$XDG_CONFIG_HOME/zsh/aliases"

# +---------+
# | SCRIPTS |
# +---------+

source "$DOTFILES/zsh/scripts.sh"

# +--------+
# | PROMPT |
# +--------+

eval "$(starship init zsh)"
# autoload -Uz prompt_purification_setup; prompt_purification_setup

# +------------+
# | COMPLETION |
# +------------+

autoload -Uz compinit; compinit
_comp_options+=(globdots)                       # With hidden files
source $DOTFILES/zsh/external/completion.zsh

# +----------------+
# | AUTOSUGGESTION |
# +----------------+

source $DOTFILES/zsh/external/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept

# +------------------------+
# | GRUVBOX color override |
# +------------------------+

source $XDG_CONFIG_HOME/nvim/plugged/gruvbox/gruvbox_256palette.sh

# Use gruvbox-dark theme for bat which is used by fzf in vim
# See https://github.com/sharkdp/bat#highlighting-theme for more info
export BAT_THEME="gruvbox-dark"

# +-----------+
# | VI KEYMAP |
# +-----------+

zmodload zsh/complist                           # Vim mapping for completion 
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v                                      # enabling vi mode
export KEYTIMEOUT=1
autoload -Uz cursor_mode && cursor_mode         # Change cursor
autoload -Uz edit-command-line                  # editing command line in nvim
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# +-----+
# | fzf |
# +-----+

if [ $(command -v "fzf") ]; then
    source $PREFIX/share/fzf/completion.zsh
    source $PREFIX/share/fzf/key-bindings.zsh
fi

export RANGER_LOAD_DEFAULT_RC=FALSE     # skip loading the default config file for ranger

# +--------------+
# | call plugins |
# +--------------+

eval "$(zoxide init zsh)"               # call zoxide
eval "$(atuin init zsh --disable-ctrl-r)"                # call atuin

# +-----+
# | nnn |
# +-----+

export NNN_TERMINAL="xterm-256color"
export NNN_PLUG='c:cdpath;d:fzcd;f:fzopen;g:gutenread;i:imgview;m:cmusq;n:nuke;p:preview-tui;z:autojump'
export NNN_FIFO="$PREFIX/tmp/nnn.fifo"
export NNN_TMPFILE="$PREFIX/tmp/.lastd"
export NNN_COLORS="4257"
export NNN_FCOLORS="3ab24a6a006063f6ccd0aba0"
export NNN_OPENER=nuke
export NNN_ARCHIVE="\\.(7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip)$"
[ -n "$NNNLVL" ] && PS1="N$NNNLVL $PS1"
export sel=${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.selection
export NNN_SSHFS='sshfs -o reconnect,idmap=user,cache_timeout=3600'

export PASSWORD_STORE_CLIP_TIME='90'    # set-up for 90 seconds clipboard clear for pass

# +---------------------+
# | SYNTAX HIGHLIGHTING |
# +---------------------+
source $PREFIX/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
