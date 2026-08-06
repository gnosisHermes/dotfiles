export XCURSOR_THEME="Hakurei Reimu"
export XCURSOR_SIZE=24
export QT_QPA_PLATFORMTHEME=gtk3
export XDG_CURRENT_DESKTOP=GNOME

xrdb "$HOME/.Xresources"
xsettingsd &
sleep 0.3
picom &
conky &
polybar &

xrdb $HOME/.Xresources &
xwinwrap -ov -g 500x210+1425+900 -ni -b -nf -s -argb -- urxvt -embed WID -depth 32 -bg "[0]#000000" -fn 'xft:IBM Plex Mono:size=7' +sb +bl -e sh -c 'exec cava -p ~/.config/cava/config' &
setxkbmap es -option ctrl:swapcaps&
xrandr --output DisplayPort-0 --rate 164.92 --mode 1920x1080 &
xset r rate 300 50 &

tint2 -c /home/anon/.config/tint2/anon.tint2rc &
/home/anon/bin/change_wall.sh &
exec cwm


