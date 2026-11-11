-- decoration and behavior settings

hl.config({
	general = {
		gaps_in = 2,
		gaps_out = 1,
		border_size = 2,
		col = {
			active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
			inactive_border = "rgba(595959aa)",
		},
		layout = "dwindle",
	},
})

hl.config({
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		mouse_move_enables_dpms = true,
		enable_swallow = true,
		swallow_regex = "^(Alacritty|org.wezfurlong.wezterm|note)$",
	},
	render = {
		direct_scanout = true,
	},
	decoration = {
		rounding = 4,
		active_opacity = 1,
		inactive_opacity = 1,
		blur = {
			enabled = true,
			size = 4,
			passes = 2,
			new_optimizations = true,
		},
	},
	animations = {
		enabled = true,
	},
	dwindle = {
		preserve_split = true,
	},
})

hl.curve("overshot", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("smoothOut", { type = "bezier", points = { { 0.36, 0.0 }, { 0.66, -0.56 } } })
hl.curve("smoothIn", { type = "bezier", points = { { 0.25, 1.0 }, { 0.5, 1.0 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "overshot", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "smoothOut", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 3, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 3, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 3, bezier = "smoothIn" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 3, bezier = "smoothIn" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "default" })
