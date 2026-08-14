#!/usr/bin/env bash

export DISPLAY=:0
mapfile -t wallpapers < <(ls -1 /home/anon/img/wallpapers)
export NUMBER=$(ls -1 /home/anon/img/wallpapers | wc -l)
export RANDWAL=$(echo "$RANDOM % $NUMBER" | bc)
export FINALWAL=${wallpapers[$RANDWAL]}

feh --bg-scale "/home/anon/img/wallpapers/$FINALWAL"
xfconf-query --channel xfce4-desktop --property /backdrop/screen0/monitorDisplayPort-0/workspace0/last-image --set "/home/anon/img/wallpapers/$FINALWAL"

