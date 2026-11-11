-- main hyprland lua

local function safe_require(module)
	local ok, err = pcall(require, module)
	if not ok then
		hl.exec_cmd("notify-send 'Hyprland config' 'Failed to load " .. module .. "'")
		hl.exec_cmd("notify-send 'Hyprland config error' '" .. tostring(err):gsub("'", "") .. "'")
	end
end

safe_require("autostart")
safe_require("devices")
safe_require("decoration")
safe_require("keybindings")
safe_require("window_rules")
