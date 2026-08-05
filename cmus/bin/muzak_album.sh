#!/bin/bash

find /home/anon/nfs/media/musica -type d | awk -F'/musica/' '{print $2 }' | dmenu -p "Muzak: " -c -b -i -l 20 -M 30| while read -r sel; do
 [ -n "$sel" ] && cmus-remote -q "/home/anon/nfs/media/musica/$sel"
done
