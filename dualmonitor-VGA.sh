#!/bin/sh
# Author: rDini

if [ $(xrandr | grep -A 1 " connected " | grep -v "^--$" | awk '{print $1}' | grep -c HDMI1) ] ; then
	cmd="xrandr --output HDMI1 --auto --left-of LVDS1"
	echo "Running command: $cmd"
	eval $cmd
fi
