#!/usr/bin/env bash


MY_DOCK=$(lsusb | grep "17ef:30ad")

function restart_waybar {
    pkill waybar
    waybar &
}

if [ -z "$MY_DOCK" ]; then
    notify-send "No dock detected"
    cp /home/bryan/.config/hypr/devices_nodock.conf /home/bryan/.config/hypr/devices.conf
    restart_waybar
    exit 0
else
    notify-send "Dock detected"
    cp /home/bryan/.config/hypr/devices_dock.conf /home/bryan/.config/hypr/devices.conf
    restart_waybar
    exit 0
fi



