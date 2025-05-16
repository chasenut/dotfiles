#!/bin/bash

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload cashtan_bar_linux &
  done
else
  polybar --reload cashtan_bar_linux &
fi
