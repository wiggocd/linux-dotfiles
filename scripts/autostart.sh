hsetroot -cover ~/.config/wallpaper.png
hsetroot -cover ~/.config/wallpaper.jpg

picom --config ~/.config/picom.conf --backend glx &
sxhkd &
~/.config/polybar/launch.sh &
