#!/bin/sh
img=/tmp/i3lock.png
scrot $img
convert $img -scale 10% -scale 1000% $img
i3lock -u -i $img
set $i3lockwall sh ~/.config/i3/scripts/lock.sh
bindsym $mod+CTRL+Shift+1 exec --no-startup-id$i3lockwall
