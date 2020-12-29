#!/bin/bash

BG_DIR="~/.config"

if [ -f "$BG_DIR/wallpaper.jpg" ]; then
	hsetroot -cover ~/.config/wallpaper.jpg
else
	hsetroot -cover ~/.config/wallpaper.png
fi

killall picom &&
killall sxhkd &&
killall polybar &&

picom --config ~/.config/picom.conf --backend glx &
sxhkd &
~/.config/polybar/launch.sh &
python ~/scripts/i3-alternating-layout.py
