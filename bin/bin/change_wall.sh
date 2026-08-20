#!/usr/bin/env bash

export DISPLAY=:0
mapfile -t wallpapers < <(ls -1 /home/anon/img/wallpapers)
export NUMBER=$(ls -1 /home/anon/img/wallpapers | wc -l)
export RANDWAL=$(echo "$RANDOM % $NUMBER" | bc)
export FINALWAL=${wallpapers[$RANDWAL]}

xwallpaper --stretch "/home/anon/img/wallpapers/$FINALWAL"

