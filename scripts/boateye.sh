#!/bin/bash

# Get active window width
width=$(hyprctl activewindow -j | jq '.size[0]')
height=$(hyprctl activewindow -j | jq '.size[1]')

w=350
h=10000

if [[ "$width" -eq "$w" && "$height" -eq "$h" ]]; then
    hyprctl dispatch fullscreen
else
    hyprctl dispatch fullscreen
    hyprctl dispatch resizeactive exact $w $h
    xoffset=$(((1980 - $w) / 2))
    yoffset=$(((1080 - $h) / 2))
    hyprctl dispatch moveactive exact $xoffset $yoffset
    hyprctl dispatch workspace previous
    hyprctl dispatch workspace previous
fi
