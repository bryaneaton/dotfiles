hl.config({
	binds = {
		allow_workspace_cycles = true,
	},
})

local function sh(cmd)
	return hl.dsp.exec_cmd(cmd)
end

hl.bind("Print", sh("omasnap"))
hl.bind("ALT + Print", sh("~/.config/hypr/scripts/gpu_screen_record"))
hl.bind("SUPER + SHIFT + S", sh("omasnap --capture-region"))

hl.bind("SUPER + SHIFT + X", sh("hyprpicker -a -n"))
hl.bind("SUPER + CTRL + N", sh("~/.config/hypr/scripts/nightlight_toggle"))
hl.bind("CTRL + ALT + L", sh("hyprlock"))
hl.bind("SUPER + SHIFT + M", sh("uwsm stop"))

hl.bind("SUPER + Return", sh("/usr/bin/wezterm-gui start --always-new-process"))
hl.bind("SUPER + B", sh("google-chrome-stable"))
hl.bind("SUPER + N", sh("wezterm start --always-new-process"))
hl.bind("SUPER + E", sh("thunar"))
hl.bind("SUPER + R", sh("walker"))
hl.bind("SUPER + Space", sh("walker"))
hl.bind("SUPER + M", hl.dsp.dpms("on"))
hl.bind("SUPER + TAB", hl.dsp.focus({ workspace = "previous" }))

hl.bind(
	"XF86AudioRaiseVolume",
	sh("pamixer -i 5 && ~/.config/hypr/scripts/volume_notify"),
	{ repeating = true, locked = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	sh("pamixer -d 5 && ~/.config/hypr/scripts/volume_notify"),
	{ repeating = true, locked = true }
)
hl.bind("XF86AudioMute", sh("pamixer -t && ~/.config/hypr/scripts/volume_notify"), { locked = true })

hl.bind(
	"XF86MonBrightnessUp",
	sh("brightnessctl set 100+ && ~/.config/hypr/scripts/brightness_notify"),
	{ repeating = true }
)
hl.bind(
	"XF86MonBrightnessDown",
	sh("brightnessctl set 100- && ~/.config/hypr/scripts/brightness_notify"),
	{ repeating = true }
)

hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + F", hl.dsp.window.fullscreen())
hl.bind("SUPER + SHIFT + Space", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle floating" })
hl.bind("SUPER + P", hl.dsp.window.pseudo())

hl.bind("SUPER" .. " + h", hl.dsp.focus({ direction = "left" }), { description = "Move focus left" })
hl.bind("SUPER" .. " + l", hl.dsp.focus({ direction = "right" }), { description = "Move focus right" })
hl.bind("SUPER" .. " + k", hl.dsp.focus({ direction = "up" }), { description = "Move focus up" })
hl.bind("SUPER" .. " + j", hl.dsp.focus({ direction = "down" }), { description = "Move focus down" })

hl.bind(
	"SUPER" .. " + ALT + h",
	hl.dsp.window.resize({ x = 100, y = 0, relative = true }),
	{ repeating = true },
	{ description = "Increase window width with keyboard" }
)
hl.bind(
	"SUPER" .. " + ALT + l",
	hl.dsp.window.resize({ x = -100, y = 0, relative = true }),
	{ repeating = true },
	{ description = "Reduce window width with keyboard" }
)
hl.bind(
	"SUPER" .. " + ALT + k",
	hl.dsp.window.resize({ x = 0, y = -100, relative = true }),
	{ repeating = true },
	{ description = "Increase window height with keyboard" }
)
hl.bind(
	"SUPER" .. " + ALT + j",
	hl.dsp.window.resize({ x = 0, y = 100, relative = true }),
	{ repeating = true },
	{ description = "Reduce window height with keyboard" }
)

hl.bind("SUPER + CTRL + h", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + CTRL + l", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + CTRL + left", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + CTRL + right", hl.dsp.focus({ workspace = "e+1" }))

hl.bind("SUPER + g", hl.dsp.group.toggle())
hl.bind("SUPER + bracketleft", hl.dsp.group.prev())
hl.bind("SUPER + bracketright", hl.dsp.group.next())

hl.bind("SUPER + z", hl.dsp.workspace.toggle_special())
hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("magic"), { description = "Toggle special workspace magic" })

for i = 1, 10 do
	local key = i % 10 -- 10 maps to 0
	hl.bind("SUPER +" .. key, hl.dsp.focus({ workspace = i }), { description = "Focus workspace " .. i })
	hl.bind(
		"SUPER + SHIFT +" .. key,
		hl.dsp.window.move({ workspace = i }),
		{ description = "Move window to workspace " .. i }
	)
end

hl.bind("CTRL + right", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("CTRL + left", hl.dsp.focus({ workspace = "e-1" }))
-- Scroll through existing workspaces with "SUPER" + scroll
hl.bind("SUPER" .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }), { description = "Switch to next workspace" })
hl.bind("SUPER" .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }), { description = "Switch to previous workspace" })
hl.bind("SUPER" .. " + mouse:272", hl.dsp.window.drag(), { mouse = true, description = "Move window with the mouse" })
hl.bind(
	"SUPER" .. " + mouse:273",
	hl.dsp.window.resize(),
	{ mouse = true, description = "Resize window with the mouse" }
)
