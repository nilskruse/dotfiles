#! /bin/sh

bspc monitor eDP1 -d 1 2 3 4 5 6 7 8 9 10
bspc monitor HDMI1 -r 

~/.config/polybar/launch.sh & # Status bar

feh --bg-fill ~/images/wallpaper.jpg &