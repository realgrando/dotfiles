#!/bin/bash
killall -9 autohide.sh 2>/dev/null
killall waybar 2>/dev/null

waybar &
sleep 1
nohup ~/.config/waybar/autohide.sh >/dev/null 2>&1 &
