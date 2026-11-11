-- devices

hl.monitor({
	output = "DP-2",
	mode = "5120x1440",
	position = "0x0",
	scale = 1,
})

hl.config({
	input = {
		kb_layout = "us",
		follow_mouse = 1,
		sensitivity = 0,
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})
--[[
-- old config
monitor=DP-11,5120x1440@59.97,0x-1440,1
monitor=DP-12,5120x1440@59.97,0x-1440,1
monitor=DP-13,5120x1440@59.97,0x-1440,1
monitor=eDP-1,disabled,false
monitor=HDMI-1,preferred,auto,1 # Work
input {
  kb_layout = us # KEYBOARD LAYOUT
  follow_mouse = 1
  sensitivity = 0 # -1.0 TO 1.0, 0 MEANS NO MODIFICAION
}

gesture = 3, horizontal, workspace
]]
