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
export LS_COLORS="di=32;40:ln=35:so=31:pi=33;46:ex=32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
export LS_COLORS='di=1;48;5;16;38;5;39:ln=1;38;5;213:so=38;5;213:pi=38;5;222:ex=1;38;5;46:bd=48;5;235;38;5;222:cd=48;5;235;38;5;222:su=48;5;196;38;5;231:sg=48;5;208;38;5;16:tw=48;5;40;38;5;16:ow=48;5;33;38;5;231:st=48;5;33;38;5;231:*.tar=1;38;5;208:*.zip=1;38;5;208:*.gz=1;38;5;208:*.rar=1;38;5;208:*.7z=1;38;5;208:*.jpg=38;5;213:*.jpeg=38;5;213:*.png=38;5;213:*.gif=38;5;213:*.svg=38;5;213:*.mp4=38;5;213:*.mkv=38;5;213:*.mp3=38;5;177:*.flac=38;5;177:*.md=38;5;222:*.txt=38;5;250:*.json=38;5;186:*.yaml=38;5;186:*.yml=38;5;186:*.toml=38;5;186:*.py=38;5;114:*.js=38;5;222:*.ts=38;5;75:*.rs=38;5;208:*.go=38;5;80:*.sh=1;38;5;46:*.env=1;38;5;196;5:*.log=38;5;239'

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
alias ls="ls --color -hF"

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

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'
zstyle ':completion:*' group-name ''

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


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

