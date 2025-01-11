#! /bin/sh
xrandr --output HDMI-0 --mode 2560x1440 --rate 100 --primary
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

feh --bg-scale ~/wallpapers/g3.png &
xrdb ~/.Xresources &
picom --daemon &
dwmblocks 2> /dev/null &
 
xset s off &
xset -dpms &
otd-daemon &

exec gentoo-pipewire-launcher &
exec dbus-run-session dwm 
