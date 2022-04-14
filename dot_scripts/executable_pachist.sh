#! /bin/sh
pacman -Qie | grep -E '^Name|^Install Date' | awk -F":" '{print $2}' | sed '0~1s/$/ - /g' | sed '0~2s/ - $/#/g' | tr '\n' ' ' | sed 's/#/\n/g' | sort -k2 -d