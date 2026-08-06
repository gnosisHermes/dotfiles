exec picom &
exec conky &
exec polybar &    
exec xwinwrap -ov -g 500x210+1425+900 -ni -b -nf -s -argb -- urxvt -embed WID -depth 32 -fn 'xft:IBM Plex Mono:size=7' +sb +bl -e sh -c 'exec cava -p ~/.config/cava/config' &
exec setxkbmap es -option ctrl:swapcaps&
exec xrandr --output DisplayPort-0 --rate 164.92 --mode 1920x1080 &
exec xset r rate 300 50 &
exec xsettingsd &
exec tint2 -c /home/anon/.config/tint2/anon.tint2rc &
exec /home/anon/bin/change_wall.sh &
exec xrdb /home/anon/.Xresources &
exec cwm

