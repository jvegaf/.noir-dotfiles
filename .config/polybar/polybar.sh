#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch main and bar2
# echo "---" | tee -a /tmp/polymain.log /tmp/polybar2.log
# echo "---" | tee -a /tmp/polymain.log
# polybar main 2>&1 | tee -a /tmp/polymain.log & disown
# polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main &
  done
else
  polybar --reload main &
fi
