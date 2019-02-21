#!/bin/bash

# 
#   This script is used to connect/disconnect
#   my bluetooth headphones.
#

choices="Connect
Disconnect"
chosen=$(echo "$choices" | dmenu -i)
case "$chosen" in
    Connect) blueman-applet & sleep 2 && bluetoothctl <<< 'connect 70:26:05:55:B2:0F' && sleep 5 && killall blueman-applet ;;
    Disconnect) bluetoothctl <<< 'disconnect 70:26:05:55:B2:0F' ;;
esac
