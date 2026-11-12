-- Autostart
--
-- uwsm already exports the session environment to systemd/dbus.
-- Started as systemd user services (enabled via `systemctl --user enable`):
--   waybar, hypridle, hyprsunset, cliphist, elephant

local function app(cmd)
	return "uwsm app -- " .. cmd
end

local apps = {
	"/usr/lib/polkit-kde-authentication-agent-1",
	"nm-applet",
	"blueman-applet",
	"walker --gapplication-service",
	"steam",
	"discord",
	"slack",
	"tmog-task-manager",
}

hl.on("hyprland.start", function()
	for _, cmd in ipairs(apps) do
		hl.exec_cmd(app(cmd))
	end
end)
