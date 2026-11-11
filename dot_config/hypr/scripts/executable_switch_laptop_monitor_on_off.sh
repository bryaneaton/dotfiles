#!/bin/bash

# Get current monitor status
status=$(hyprctl monitors -j | jq '.[] | select(.name == "eDP-1") | .disabled')

if [ "$status" = "false" ]; then
    hyprctl keyword monitor "eDP-1,disable"
else
    hyprctl keyword monitor "eDP-1,preferred,auto,1"
fi
