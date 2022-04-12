#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
TRAYSET=0
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ "$m" == "DP-0" ]; then
      TRAYPOS="right" MONITOR=$m polybar --reload example &
      TRAYSET=1
    else
      MONITOR=$m polybar --reload example &
    fi   
  done
else
  polybar --reload example &
fi

if [TRAYSET -eq 0]
  TRAYPOS="right" MONITOR=$m polybar --reload example &
fi
echo "Polybar launched..."
