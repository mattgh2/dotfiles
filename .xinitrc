#!/bin/sh

# Not needed here, placed in WM config instead (except for dwm)
    picom&
    nitrogen --restore &
    xrandr --output HDMI-0 --primary --mode 1920x1080  --rate 165
    dwmblocks 2>&1 > /dev/null &
    # $HOME/polybar-collection/launch.sh &

# Starts urxvt as a daemon, results in better startup time
# urxvtd --quiet --opendisplay --fork

# Load
xrdb ~/.Xresources

# WM 
# exec bspwm
exec dwm
