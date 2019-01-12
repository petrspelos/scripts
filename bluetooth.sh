#!/bin/bash

# 
#   This script is used to connect/disconnect
#   my bluetooth headphones.
#

choices="Connect
Disconnect"
chosen=$(echo "$choices" | dmenu -i)
case "$chosen" in
    Connect) bluetoothctl <<< 'connect 70:26:05:55:B2:0F' ;;
    Disconnect) bluetoothctl <<< 'disconnect 70:26:05:55:B2:0F' ;;
esac
