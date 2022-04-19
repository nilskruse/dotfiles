#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
if [[ "$(hostname)" == "archdesktop" ]]; then
    if type "xrandr"; then
      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        if [ "$m" == "DP-0" ]; then
          TRAYPOS="right" MONITOR=$m polybar --reload example &
        else
          MONITOR=$m polybar --reload example &
        fi   
      done
    else
      polybar --reload example &
    fi
else
    TRAYPOS="right" MONITOR=$m polybar --reload example &
fi
echo "Polybar launched..."
