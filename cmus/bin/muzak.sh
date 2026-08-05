#!/bin/bash

cmus-remote -C "save -l -" | awk -F'/musica/' '{print $2 }' | dmenu -p "Muzak: " -c -b -i -l 20 -M 30| while read -r sel; do
 [ -n "$sel" ] && cmus-remote -f "/home/anon/nfs/media/musica/$sel"
done
