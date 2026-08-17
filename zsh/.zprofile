export GTK_THEME=DarkCold
export EDITOR="emacs -q -nw -l ~/.config/emacs/init.min.el"
export BROWSER="firefox"
export TERMINAL="urxvt"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

if [ -z "$XDG_RUNTIME_DIR" ]; then
    export XDG_RUNTIME_DIR="/tmp/run-$(id -u)"
    mkdir -p -m 700 "$XDG_RUNTIME_DIR"
fi


