#!/bin/sh

# 
#   This script is used to select one of my
#   screen setups. It uses arandr, and dmenu
#

choices="Laptop\nVGA\nOther"
chosen=$(echo "$choices" | dmenu -i)
case "$chosen" in
    Laptop) /home/peter/Repos/scripts/.screenlayout/laptop-only.sh ;;
    VGA) /home/peter/Repos/scripts/.screenlayout/dual-home.sh ;;
    Other) arandr ;;
esac
