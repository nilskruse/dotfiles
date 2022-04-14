#! /bin/sh

xrandr --output HDMI1 --right-of eDP1
bspc monitor eDP1 -d 1 2 3 4 5 6
bspc monitor HDMI1 -d 7 8 9 10


~/.config/polybar/launch.sh & # Status bar

feh --bg-fill ~/images/wallpaper.jpg &