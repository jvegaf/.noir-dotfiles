#!/usr/bin/env sh

if [[ ! $(pidof eww) ]]; then
  eww daemon
  sleep 1
fi

eww -c $HOME/.config/eww/bar close-all
eww -c $HOME/.config/eww/bar open bar
