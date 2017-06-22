#!/bin/bash
nom=$(xrandr -q | grep ' connected' | wc -l)
while [ true ]; do
if [ $nom  == 2 ]
then
        xrandr --output HDMI-1 --off --output LVDS-1 --mode 1600x900 --pos 112x1080 --rotate normal --output DP-1 --off --output VGA-1 --mode 1920x1080 --pos 0x0 --rotate normal
	feh --bg-scale ~/Images/b_1_q_0_p_0.jpg
elif [ $nom  == 1 ]
then
	xrandr --output HDMI-1 --off --output LVDS-1 --mode 1600x900 --pos 0x0 --rotate normal --output DP-1 --off --output VGA-1 --off
fi
sleep 10
done
