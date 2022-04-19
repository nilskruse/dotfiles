#!/bin/bash

# Terminate already running bar instances
killall -q polybar
CONFIGFILE=$1
BAR=$2
if [ -z "$1" ]
  then
    CONFIGFILE=$XDG_CONFIG_HOME/polybar/config.ini
fi

if [ -z "$2" ]
  then
      BAR=example
fi

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
if [[ "$(hostname)" == "archdesktop" ]]; then
    if type "xrandr"; then
      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        if [ "$m" == "DP-0" ]; then
          TRAYPOS="right" MONITOR=$m polybar --reload $BAR --config=$CONFIGFILE &
        else
          MONITOR=$m polybar --reload $BAR --config=$CONFIGFILE &
        fi   
      done
    else
      polybar --reload $BAR --config=$CONFIGFILE &
    fi
else
    TRAYPOS="right" MONITOR=$m polybar --reload $BAR --config=$CONFIGFILE &
fi
echo "Polybar launched..."
