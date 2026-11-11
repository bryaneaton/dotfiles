-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
-- hl.on("hyprland.start", function ()
--   hl.exec_cmd(terminal)
--   hl.exec_cmd("nm-applet")
--   hl.exec_cmd("waybar & hyprpaper & firefox")
-- end)

local waybar = "waybar"
local xdg_env_dbus = "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
local xdg_env_systemd = "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
local polkit = "/usr/lib/polkit-kde-authentication-agent-1"
local pipewire = "systemctl --user restart pipewire"
local wlpaste = "wl-paste --watch cliphist store"
local nm = "nm-applet"
local bluetooth = "blueman-applet"
local hypridle = "hypridle"
local hyprsunset = "hyprsunset"
local elephant = "elephant"
local walker = "walker --gapplication-service"
local steam = "steam"
local discord = "discord"
local slack = "slack"
local tmog = "tmog-task-manager"
hl.on("hyprland.start", function()
	hl.exec_cmd(xdg_env_dbus)
	hl.exec_cmd(xdg_env_systemd)
	hl.exec_cmd(polkit)
	hl.exec_cmd(waybar)
	hl.exec_cmd(pipewire)
	hl.exec_cmd(wlpaste)
	hl.exec_cmd(nm)
	hl.exec_cmd(bluetooth)
	hl.exec_cmd(hypridle)
	hl.exec_cmd(hyprsunset)
	hl.exec_cmd(elephant)
	hl.exec_cmd(walker)
	hl.exec_cmd(steam)
	hl.exec_cmd(discord)
	hl.exec_cmd(slack)
	hl.exec_cmd(tmog)
end)
