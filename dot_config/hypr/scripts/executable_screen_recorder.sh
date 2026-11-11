#!/bin/env bash

set -eux

wf-recorder_check() {
	if pgrep -x "wf-recorder" > /dev/null; then
			pkill -INT -x wf-recorder
			notify-send "Stopping all instances of wf-recorder" "$(cat /tmp/recording.txt)"
			wl-copy < "$(cat /tmp/recording.txt)"
			exit 0
	fi
}

wf-recorder_check
MONITOR=$(hyprctl monitors | grep Monitor | awk '{print $2}')
SELECTION=$(echo -e "screenshot selection\nscreenshot $MONITOR\nscreenshot DP-2\nscreenshot both screens\nrecord selection\nrecord DP-13\nrecord DP-2" | fuzzel -d -p "󰄀 " -w 25 -l 6)

IMG="${HOME}/Pictures/screenshots/$(date +%Y-%m-%d_%H-%m-%s).png"
VID="${HOME}/Pictures/recordings/$(date +%Y-%m-%d_%H-%m-%s).mp4"


case "$SELECTION" in
	"screenshot selection")
		grim -g "$(slurp)" "$IMG"
		wl-copy < "$IMG"
		notify-send "Screenshot Taken" "${IMG}"
		;;
	"screenshot $MONITOR")
		grim -c -o $MONITOR "$IMG"
		wl-copy < "$IMG"
		notify-send "Screenshot Taken" "${IMG}"
		;;
	"record selection")
		echo "$VID" > /tmp/recording.txt
		wf-recorder -a -g "$(slurp)" -f "$VID" &>/dev/null
		;;
	"record $MONITOR")
		echo "$VID" > /tmp/recording.txt
		wf-recorder -a -o $MONITOR -f "$VID" &>/dev/null
		;;
*)
	;;
esac
