hl.config({
	binds = {
		allow_workspace_cycles = true,
		hide_special_on_workspace_change = true,
	},
})

local function sh(cmd)
	return hl.dsp.exec_cmd(cmd)
end

hl.bind("Print", sh("omasnap"), { description = "Screenshot" })
hl.bind("ALT + Print", sh("~/.config/hypr/scripts/gpu_screen_record"), { description = "Screen recording" })
hl.bind("SUPER + SHIFT + S", sh("omasnap --capture-region"), { description = "Screenshot region" })

hl.bind("SUPER + SHIFT + X", sh("hyprpicker -a -n"), { description = "Color picker" })
hl.bind("SUPER + CTRL + N", sh("~/.config/hypr/scripts/nightlight_toggle"), { description = "Toggle nightlight" })
hl.bind("CTRL + ALT + L", sh("hyprlock"), { description = "Lock screen" })
hl.bind("SUPER + SHIFT + M", sh("uwsm stop"), { description = "Log out" })

hl.bind("SUPER + Return", sh("/usr/bin/wezterm-gui start --always-new-process"), { description = "Terminal" })
hl.bind("SUPER + B", sh("google-chrome-stable"), { description = "Browser" })
hl.bind("SUPER + N", sh("wezterm start --always-new-process"), { description = "Terminal (wezterm)" })
hl.bind("SUPER + E", sh("thunar"), { description = "File manager" })
hl.bind("SUPER + R", sh("walker"), { description = "App launcher" })
hl.bind("SUPER + Space", sh("walker"), { description = "App launcher" })
hl.bind("SUPER + M", hl.dsp.dpms("on"), { description = "Turn displays on" })
hl.bind("SUPER + TAB", hl.dsp.focus({ workspace = "previous" }), { description = "Previous workspace" })

hl.bind(
	"XF86AudioRaiseVolume",
	sh("pamixer -i 5 && ~/.config/hypr/scripts/volume_notify"),
	{ repeating = true, locked = true, description = "Volume up" }
)
hl.bind(
	"XF86AudioLowerVolume",
	sh("pamixer -d 5 && ~/.config/hypr/scripts/volume_notify"),
	{ repeating = true, locked = true, description = "Volume down" }
)
hl.bind(
	"XF86AudioMute",
	sh("pamixer -t && ~/.config/hypr/scripts/volume_notify"),
	{ locked = true, description = "Mute" }
)
hl.bind(
	"ALT + XF86AudioRaiseVolume",
	sh("pamixer -i 1 && ~/.config/hypr/scripts/volume_notify"),
	{ repeating = true, locked = true, description = "Volume up 1%" }
)
hl.bind(
	"ALT + XF86AudioLowerVolume",
	sh("pamixer -d 1 && ~/.config/hypr/scripts/volume_notify"),
	{ repeating = true, locked = true, description = "Volume down 1%" }
)
hl.bind("XF86AudioMicMute", sh("pamixer --default-source -t"), { locked = true, description = "Mute microphone" })
hl.bind("XF86AudioPlay", sh("playerctl play-pause"), { locked = true, description = "Play/pause" })
hl.bind("XF86AudioPause", sh("playerctl play-pause"), { locked = true, description = "Play/pause" })
hl.bind("XF86AudioNext", sh("playerctl next"), { locked = true, description = "Next track" })
hl.bind("XF86AudioPrev", sh("playerctl previous"), { locked = true, description = "Previous track" })

-- Media controls for keyboards without media keys
hl.bind(
	"SUPER + ALT + Up",
	sh("pamixer -i 5 && ~/.config/hypr/scripts/volume_notify"),
	{ repeating = true, locked = true, description = "Volume up" }
)
hl.bind(
	"SUPER + ALT + Down",
	sh("pamixer -d 5 && ~/.config/hypr/scripts/volume_notify"),
	{ repeating = true, locked = true, description = "Volume down" }
)
hl.bind(
	"SUPER + ALT + M",
	sh("pamixer -t && ~/.config/hypr/scripts/volume_notify"),
	{ locked = true, description = "Mute" }
)
hl.bind("SUPER + ALT + SHIFT + M", sh("pamixer --default-source -t"), { locked = true, description = "Mute microphone" })
hl.bind("SUPER + ALT + Space", sh("playerctl play-pause"), { locked = true, description = "Play/pause" })
hl.bind("SUPER + ALT + Right", sh("playerctl next"), { locked = true, description = "Next track" })
hl.bind("SUPER + ALT + Left", sh("playerctl previous"), { locked = true, description = "Previous track" })

-- Notifications (mako)
hl.bind("SUPER + comma", sh("makoctl dismiss"), { description = "Dismiss last notification" })
hl.bind("SUPER + SHIFT + comma", sh("makoctl dismiss --all"), { description = "Dismiss all notifications" })
hl.bind("SUPER + ALT + comma", sh("makoctl invoke"), { description = "Invoke last notification" })
hl.bind("SUPER + SHIFT + ALT + comma", sh("makoctl restore"), { description = "Restore last notification" })

hl.bind("SUPER + F1", sh("~/.config/hypr/scripts/keybindings_menu"), { description = "Show key bindings" })

-- Clipboard
hl.bind("SUPER + CTRL + V", sh("~/.config/hypr/scripts/clipboard_menu"), { description = "Clipboard history" })
hl.bind("SUPER + CTRL + Print", sh("~/.config/hypr/scripts/ocr_region"), { description = "Copy text from screen (OCR)" })
-- CTRL/SHIFT+Insert are copy/paste in both GUI apps and terminals
hl.bind("SUPER + C", hl.dsp.send_shortcut({ mods = "CTRL", key = "Insert" }), { description = "Universal copy" })
hl.bind("SUPER + V", hl.dsp.send_shortcut({ mods = "SHIFT", key = "Insert" }), { description = "Universal paste" })
hl.bind("SUPER + X", hl.dsp.send_shortcut({ mods = "CTRL", key = "X" }), { description = "Universal cut" })

-- Screen zoom
hl.bind("SUPER + CTRL + Z", function()
	local zoom = hl.get_config("cursor.zoom_factor") or 1
	hl.config({ cursor = { zoom_factor = zoom + 1 } })
end, { description = "Zoom in" })
hl.bind("SUPER + CTRL + ALT + Z", function()
	hl.config({ cursor = { zoom_factor = 1 } })
end, { description = "Reset zoom" })

hl.bind(
	"XF86MonBrightnessUp",
	sh("brightnessctl set 100+ && ~/.config/hypr/scripts/brightness_notify"),
	{ repeating = true, description = "Brightness up" }
)
hl.bind(
	"XF86MonBrightnessDown",
	sh("brightnessctl set 100- && ~/.config/hypr/scripts/brightness_notify"),
	{ repeating = true, description = "Brightness down" }
)

hl.bind("SUPER + Q", hl.dsp.window.close(), { description = "Close window" })
hl.bind("SUPER + F", hl.dsp.window.fullscreen(), { description = "Fullscreen" })
hl.bind("SUPER + ALT + F", hl.dsp.window.fullscreen({ mode = "maximized" }), { description = "Full width (keep bar and gaps)" })
hl.bind(
	"SUPER + CTRL + F",
	hl.dsp.window.fullscreen_state({ action = "toggle", internal = 0, client = 2 }),
	{ description = "Tiled fullscreen (app thinks it's fullscreen)" }
)

local POP_SIZE = { x = 1300, y = 900 }
hl.bind("SUPER + O", function()
	local w = hl.get_active_window()
	if not w then
		return
	end
	if w.pinned then
		hl.dispatch(hl.dsp.window.pin({ window = w, action = "off" }))
		hl.dispatch(hl.dsp.window.float({ window = w, action = "off" }))
		return
	end
	if not w.floating then
		hl.dispatch(hl.dsp.window.float({ window = w, action = "on" }))
	end
	hl.dispatch(hl.dsp.window.resize({ window = w, x = POP_SIZE.x, y = POP_SIZE.y }))
	hl.dispatch(hl.dsp.window.center({ window = w }))
	hl.dispatch(hl.dsp.window.pin({ window = w, action = "on" }))
	hl.dispatch(hl.dsp.window.alter_zorder({ window = w, mode = "top" }))
end, { description = "Pop window out (float and pin)" })
hl.bind("SUPER + SHIFT + Space", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle floating" })
hl.bind("SUPER + P", hl.dsp.window.pseudo(), { description = "Pseudotile window" })

hl.bind("SUPER" .. " + h", hl.dsp.focus({ direction = "left" }), { description = "Move focus left" })
hl.bind("SUPER" .. " + l", hl.dsp.focus({ direction = "right" }), { description = "Move focus right" })
hl.bind("SUPER" .. " + k", hl.dsp.focus({ direction = "up" }), { description = "Move focus up" })
hl.bind("SUPER" .. " + j", hl.dsp.focus({ direction = "down" }), { description = "Move focus down" })

hl.bind("SUPER + SHIFT + h", hl.dsp.window.swap({ direction = "left" }), { description = "Swap window left" })
hl.bind("SUPER + SHIFT + l", hl.dsp.window.swap({ direction = "right" }), { description = "Swap window right" })
hl.bind("SUPER + SHIFT + k", hl.dsp.window.swap({ direction = "up" }), { description = "Swap window up" })
hl.bind("SUPER + SHIFT + j", hl.dsp.window.swap({ direction = "down" }), { description = "Swap window down" })

hl.bind("ALT + TAB", function()
	hl.dispatch(hl.dsp.window.cycle_next())
	hl.dispatch(hl.dsp.window.bring_to_top())
end, { description = "Focus next window" })
hl.bind("ALT + SHIFT + TAB", function()
	hl.dispatch(hl.dsp.window.cycle_next({ next = false }))
	hl.dispatch(hl.dsp.window.bring_to_top())
end, { description = "Focus previous window" })

-- Layout (ultrawide helpers)
hl.bind("SUPER + T", hl.dsp.layout("togglesplit"), { description = "Toggle split direction (dwindle)" })

local layout_rules = {}
hl.bind("SUPER + SHIFT + T", function()
	local ws = hl.get_active_workspace()
	if not ws or ws.special or not ws.id then
		return
	end
	local new = ws.tiled_layout == "scrolling" and "dwindle" or "scrolling"
	if layout_rules[ws.id] then
		layout_rules[ws.id]:set_enabled(false)
	end
	layout_rules[ws.id] = hl.workspace_rule({ workspace = tostring(ws.id), layout = new })
	hl.exec_cmd("notify-send -u low 'Workspace layout' '" .. new .. "'")
end, { description = "Toggle workspace layout dwindle/scrolling" })

local single_aspect = false
hl.bind("SUPER + CTRL + BackSpace", function()
	single_aspect = not single_aspect
	hl.config({ layout = { single_window_aspect_ratio = single_aspect and "16 9" or "0 0" } })
	hl.exec_cmd("notify-send -u low 'Single-window aspect' '" .. (single_aspect and "16:9" or "off") .. "'")
end, { description = "Toggle single-window 16:9 aspect" })

hl.bind(
	"SUPER" .. " + ALT + h",
	hl.dsp.window.resize({ x = 100, y = 0, relative = true }),
	{ repeating = true, description = "Increase window width with keyboard" }
)
hl.bind(
	"SUPER" .. " + ALT + l",
	hl.dsp.window.resize({ x = -100, y = 0, relative = true }),
	{ repeating = true, description = "Reduce window width with keyboard" }
)
hl.bind(
	"SUPER" .. " + ALT + k",
	hl.dsp.window.resize({ x = 0, y = -100, relative = true }),
	{ repeating = true, description = "Increase window height with keyboard" }
)
hl.bind(
	"SUPER" .. " + ALT + j",
	hl.dsp.window.resize({ x = 0, y = 100, relative = true }),
	{ repeating = true, description = "Reduce window height with keyboard" }
)

hl.bind("SUPER + CTRL + h", hl.dsp.focus({ workspace = "e-1" }), { description = "Previous workspace" })
hl.bind("SUPER + CTRL + l", hl.dsp.focus({ workspace = "e+1" }), { description = "Next workspace" })
hl.bind("SUPER + CTRL + left", hl.dsp.focus({ workspace = "e-1" }), { description = "Previous workspace" })
hl.bind("SUPER + CTRL + right", hl.dsp.focus({ workspace = "e+1" }), { description = "Next workspace" })

hl.bind("SUPER + g", hl.dsp.group.toggle(), { description = "Toggle group" })
hl.bind("SUPER + bracketleft", hl.dsp.group.prev(), { description = "Previous window in group" })
hl.bind("SUPER + bracketright", hl.dsp.group.next(), { description = "Next window in group" })
hl.bind("SUPER + ALT + G", hl.dsp.window.move({ out_of_group = true }), { description = "Move window out of group" })
for key, dir in pairs({ h = "left", l = "right", k = "up", j = "down" }) do
	hl.bind(
		"SUPER + CTRL + SHIFT + " .. key,
		hl.dsp.window.move({ into_group = dir }),
		{ description = "Move window into group " .. dir }
	)
end

hl.bind("SUPER + z", hl.dsp.workspace.toggle_special(), { description = "Toggle special workspace" })
hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("magic"), { description = "Toggle special workspace magic" })
hl.bind(
	"SUPER + ALT + S",
	hl.dsp.window.move({ workspace = "special:magic", follow = false }),
	{ description = "Move window to scratchpad" }
)

for i = 1, 10 do
	local key = i % 10 -- 10 maps to 0
	hl.bind("SUPER +" .. key, hl.dsp.focus({ workspace = i }), { description = "Focus workspace " .. i })
	hl.bind(
		"SUPER + SHIFT +" .. key,
		hl.dsp.window.move({ workspace = i }),
		{ description = "Move window to workspace " .. i }
	)
	hl.bind(
		"SUPER + SHIFT + ALT +" .. key,
		hl.dsp.window.move({ workspace = i, follow = false }),
		{ description = "Move window silently to workspace " .. i }
	)
end

hl.bind("CTRL + right", hl.dsp.focus({ workspace = "e+1" }), { description = "Next workspace" })
hl.bind("CTRL + left", hl.dsp.focus({ workspace = "e-1" }), { description = "Previous workspace" })
-- Scroll through existing workspaces with "SUPER" + scroll
hl.bind("SUPER" .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }), { description = "Switch to next workspace" })
hl.bind("SUPER" .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }), { description = "Switch to previous workspace" })
hl.bind("SUPER" .. " + mouse:272", hl.dsp.window.drag(), { mouse = true, description = "Move window with the mouse" })
hl.bind(
	"SUPER" .. " + mouse:273",
	hl.dsp.window.resize(),
	{ mouse = true, description = "Resize window with the mouse" }
)
