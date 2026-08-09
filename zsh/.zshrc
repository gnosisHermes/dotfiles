#		   _          
#	   _______| |__  _ __ ___ 
#	  |_  / __| '_ \| '__/ __|
#	 _ / /\__ \ | | | | | (__ 
#	(_)___|___/_| |_|_|  \___|
#	       

# Locales
export CASE_SENSITIVE="true"
export EDITOR="emacsclient"
export CLICOLOR="exfxcxdxbxegedabagacad"
export LS_COLORS
export PERLDOC_PAGER="less -c"
export MANPAGER="less -c"
export JAVA_HOME="/usr/lib/jvm/java-22-openjdk-amd64"
export MANPAGER="most"
#export TERM=xterm-256color
# Shell options

setopt interactive_comments
autoload -U colors && colors	# Load colors
stty stop undef		# Disable ctrl-s to freeze terminal.

# Some aliases

alias pi="mdo pkg install"
alias pr="mdo pkg remove"
alias pss="pkg search"
alias pu="mdo pkg update"
alias pp="mdo pkg upgrade"
alias par="mdo pkg autoremove"

alias xi="doas xbps-install"
alias xr="doas xbps-remove"
alias xq="doas xbps-query"

alias pa="doas apk add"
alias pd="doas apk del"
alias pu="doas apk update"
alias pp="doas apk upgrade"

alias pss="apk search -v"

alias cp="cp -v"
alias rm="rm -v"
alias mv="mv -v"
alias mkdir="mkdir -v"
alias chmod="chmod -v"
alias chown="chown -v"
alias ls="ls --color -F"
alias monero-cli="monero-wallet-cli --config-file /home/anon/.bitmonero/monero-wallet-cli.conf"


alias grep="ack"
alias mirror="wget -e robots=off -mkEpnp"
alias cpan="mdo cpan -T"
alias sl="echo estas fumao\?"
alias less="most"
alias e="emacsclient -n"      # open in existing frame
alias et="emacsclient -nw"    # open in terminal
alias ef="emacsclient -nc"    # open in new frame
alias mg="emacs -q -nw -l ~/.config/emacs/init.min.el"
# Word delimiters

autoload -U select-word-style
select-word-style bash

# ZSH COMPLETION OPSTIONS
zstyle ':completion:*' completer _expand _complete _correct _approximate _history
zstyle ':completion:*' matcher-list '' '' 'l:|=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' users root
zstyle ':completion:*' menu select
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
autoload -U colors && colors
compinit

# ZSH OTHER FEATURES
unsetopt beep
setopt no_beep
setopt nohashdirs
setopt extended_glob
setopt auto_cd
setopt auto_menu
setopt list_rows_first
setopt multios
setopt hist_ignore_all_dups
setopt append_history
setopt inc_append_history
setopt hist_reduce_blanks
setopt always_to_end
setopt no_hup
setopt complete_in_word
setopt +o nomatch
limit coredumpsize 0

# Save history in cache directory

HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

# Bind emacs-like keys to search in history

bindkey '\C-p' history-beginning-search-backward
bindkey '\C-n' history-beginning-search-forward

# And cursor keys

bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# emacs mode
set -o emacs

# Load syntax highlighting; should be last.
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {vcs_info}
[ "$(id -u)" = 0 ] && PS1ICON="#" || PS1ICON='%'
PROMPT="%F{5}%~ [%F{red}%m%f%F{5}]%f%F{red} %%%f "
PATH=/usr/local/bin/:/usr/local/sbin:/sbin:/bin:/usr/sbin:/usr/bin:~/bin
export FPATH=$FPATH:/home/anon/.antidote/functions
source /home/anon/.antidote/antidote.zsh
antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins.txt

# Asceticists 1998

export YSU_HARDCORE=1

export PATH=/home/anon/rakudo/bin:/home/anon/rakudo/share/perl6/site/bin:/home/anon/rakudo/share/perl6/vendor/bin:/home/anon/rakudo/share/perl6/core/bin::/home/anon/.local/bin:$PATH

