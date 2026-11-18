-- decoration and behavior settings

local active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 }
local inactive_border = "rgba(595959aa)"

hl.config({
	general = {
		gaps_in = 2,
		gaps_out = 1,
		border_size = 2,
		col = {
			active_border = active_border,
			inactive_border = inactive_border,
		},
		layout = "dwindle",
	},
})

-- tabbed groups, styled after Omarchy
hl.config({
	group = {
		col = {
			border_active = active_border,
			border_inactive = inactive_border,
			border_locked_active = active_border,
			border_locked_inactive = inactive_border,
		},
		groupbar = {
			font_size = 12,
			font_family = "monospace",
			font_weight_active = "ultraheavy",
			font_weight_inactive = "normal",
			indicator_height = 0,
			indicator_gap = 5,
			height = 22,
			gaps_in = 5,
			gaps_out = 0,
			text_color = "rgb(ffffff)",
			text_color_inactive = "rgba(ffffff90)",
			col = {
				active = "rgba(00000040)",
				inactive = "rgba(00000020)",
			},
			gradients = true,
			gradient_rounding = 0,
			gradient_round_only_edges = false,
		},
	},
})

hl.config({
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,
		focus_on_activate = true,
		disable_scale_notification = true,
		on_focus_under_fullscreen = 1,
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
	cursor = {
		hide_on_key_press = true,
	},
	dwindle = {
		preserve_split = true,
		force_split = 2, -- new windows always open right/bottom
	},
	scrolling = {
		column_width = 0.49,
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

-- layer animations (walker, notifications, waybar) from Omarchy
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })

hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
