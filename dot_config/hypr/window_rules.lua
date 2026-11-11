local function rule(spec)
	hl.window_rule(spec)
end

hl.layer_rule({ match = { namespace = "^omasnap$" }, no_anim = true, animation = "none" })

rule({ name = "windowrule-1", match = { class = "^org.kde.polkit-kde-authentication-agent-1$" }, float = true })
rule({ name = "windowrule-2", match = { title = "^Auto-Configuration Wizard$" }, float = true })
rule({ name = "windowrule-3", match = { title = "^Confirm to replace files$" }, float = true })
rule({ name = "windowrule-4", match = { title = "^Firewall Configuration$" }, float = true })
rule({ name = "windowrule-5", match = { class = "^file_progress$" }, float = true })
rule({ name = "windowrule-6", match = { title = "^File Operation Progress$" }, float = true })
rule({ name = "windowrule-7", match = { class = "^org.kde.kdeconnect.app$" }, float = true })
rule({ name = "windowrule-8", match = { class = "^confirm$" }, float = true })
rule({ name = "windowrule-9", match = { class = "^dialog$" }, float = true })
rule({ name = "windowrule-10", match = { class = "^download$" }, float = true })
rule({ name = "windowrule-11", match = { class = "^notification$" }, float = true })
rule({ name = "windowrule-12", match = { class = "^error$" }, float = true })
rule({ name = "windowrule-13", match = { class = "^splash$" }, float = true })
rule({ name = "windowrule-14", match = { class = "^confirmreset$" }, float = true })
rule({ name = "windowrule-15", match = { title = "^Open File$" }, float = true })
rule({ name = "windowrule-16", match = { title = "^branchdialog$" }, float = true })
rule({ name = "windowrule-17", match = { class = "^Lxappearance$" }, float = true })
rule({ name = "windowrule-18", match = { class = "^viewnior$" }, float = true })
rule({ name = "windowrule-19", match = { class = "^Viewnior$" }, float = true })
rule({ name = "windowrule-20", match = { class = "^pavucontrol-qt$" }, float = true })
rule({ name = "windowrule-21", match = { class = "^pavucontrol$" }, float = true })
rule({ name = "windowrule-22", match = { class = "^file-roller$" }, float = true })
rule({ name = "windowrule-23", match = { class = "^jetbrains-idea$" }, center = true })
rule({ name = "windowrule-24", match = { class = "^jetbrains-(?!toolbox)$", float = true }, no_initial_focus = true })
rule({ name = "windowrule-25", match = { title = "^Sign in$" }, size = "600 400" })
rule({ name = "windowrule-26", match = { title = "^wlogout$" }, float = true, fullscreen = true })
rule({ name = "windowrule-27", match = { class = "^tofi$" }, stay_focused = true })
rule({ name = "windowrule-28", match = { class = "^tofi-drun$" }, stay_focused = true })
rule({ name = "windowrule-29", match = { class = "^mpv$" }, idle_inhibit = "focus" })
rule({ name = "windowrule-30", match = { class = "^firefox$" }, idle_inhibit = "fullscreen" })
rule({ name = "windowrule-31", match = { class = "^firefox-developer-edition$" }, idle_inhibit = "fullscreen" })
rule({ name = "windowrule-32", match = { title = "^(Media viewer)$" }, float = true })
rule({ name = "windowrule-33", match = { title = "^(Volume Control)$" }, float = true, size = "600 400" })
rule({ name = "windowrule-34", match = { title = "^(Picture-in-Picture)$" }, float = true })
rule({ name = "windowrule-35", match = { class = "^(note)$" }, float = true })
rule({ name = "windowrule-36", match = { title = "🚀$" }, opaque = true })
rule({ name = "windowrule-37", match = { class = "^Google-chrome$" }, opaque = true })
rule({ name = "windowrule-38", match = { class = "^(Brave-browser.*)$" }, opaque = true })
rule({ name = "windowrule-40", match = { class = "^rider$" }, opaque = true, workspace = "3" })
rule({ name = "windowrule-41", match = { class = "^zed$" }, opaque = true })
rule({ name = "windowrule-42", match = { class = "^discord$" }, opaque = true, workspace = "8" })
rule({ name = "windowrule-43", match = { class = "^Gimp-2.10$" }, opaque = true, workspace = "7" })
rule({ name = "windowrule-44", match = { class = "^vlc$" }, opaque = true, workspace = "5" })
rule({ name = "windowrule-45", match = { class = "^Code$" }, opaque = true, workspace = "8" })
rule({ name = "windowrule-46", match = { class = "^(libreoffice.*)$" }, opaque = true })
rule({
	name = "windowrule-47",
	match = { title = "^(Open File)$", class = "^(brave)$" },
	float = true,
	size = "900 600",
	center = true,
})
rule({ name = "windowrule-48", match = { title = "cava$" }, opacity = "1.0 1.0 1.0", tile = true })
rule({ name = "windowrule-49", match = { title = "^(.*)cava(.*)$" }, opacity = "1.0 override" })
rule({ name = "windowrule-50", match = { class = "^hoi4$" }, fullscreen = true, monitor = "1", workspace = "10" })
rule({
	name = "windowrule-51",
	match = { class = "^steam_app_\\d+$" },
	fullscreen = true,
	monitor = "1",
	workspace = "10",
})
rule({ name = "windowrule-52", match = { class = "^thunar$" }, workspace = "5" })
rule({ name = "windowrule-53", match = { class = "^Cursor$" }, workspace = "5" })
rule({ name = "windowrule-54", match = { class = "^Spotify$" }, workspace = "6" })
rule({ name = "windowrule-55", match = { class = "^cava$" }, workspace = "6" })
rule({ name = "zoom-workspace", match = { class = "^(zoom|Zoom|us\\.zoom\\.Zoom)$" }, workspace = "3" })
rule({ name = "windowrule-57", match = { class = "^(waybar)$" }, workspace = "10 silent" })
rule({ name = "windowrule-58", match = { class = "^([Tt]hunderbird)$" }, workspace = "1" })
rule({ name = "windowrule-59", match = { class = "^(eu.betterbird.Betterbird)$" }, workspace = "1" })
rule({ name = "windowrule-60", match = { class = "^(org.gnome.Evolution)$" }, workspace = "1" })
rule({ name = "windowrule-61", match = { class = "^(com.obsproject.Studio)$" }, workspace = "4" })
rule({ name = "windowrule-62", match = { class = "^([Ss]team)$" }, workspace = "8" })
rule({ name = "windowrule-63", match = { class = "^([Ll]utris)$" }, workspace = "8" })
rule({ name = "windowrule-64", match = { class = "^([Ww]ebCord|[Vv]esktop)$" }, workspace = "8" })
rule({ name = "windowrule-65", match = { class = "^([Ff]erdium)$" }, workspace = "7" })
rule({ name = "windowrule-66", match = { class = "^([Ww]hatsapp-for-linux)$" }, workspace = "7" })
rule({ name = "windowrule-67", match = { class = "^(teams-for-linux)$" }, workspace = "1" })
rule({ name = "windowrule-68", match = { class = "^([Ss]ignal)$" }, workspace = "7" })
rule({ name = "windowrule-69", match = { class = "^jetbrains-pycharm-ce$" }, opaque = true, workspace = "4" })
rule({ name = "windowrule-70", match = { class = "^(jetbrains-studio)$" }, workspace = "7" })
rule({ name = "windowrule-71", match = { class = "^([Ss]lack)$" }, workspace = "3" })
rule({ name = "tmog-workspace", match = { class = "^com\\.tmog\\.taskmanager$" }, workspace = "5", fullscreen = false })
rule({
	name = "windowrule-72",
	match = { class = "^(xwaylandvideobridge)$" },
	opacity = "0.0 override",
	no_anim = true,
	no_initial_focus = true,
	max_size = "1 1",
	no_blur = true,
	no_focus = true,
})

hl.workspace_rule({ workspace = "10", no_border = true, no_rounding = true })
hl.workspace_rule({ workspace = "6", persistent = true })
hl.workspace_rule({ workspace = "8", persistent = true })

rule({
	name = "zoom-settings",
	match = {
		class = "^(zoom|Zoom|us\\.zoom\\.Zoom)$",
		title = "^(Settings|Zoom Workplace - Settings)$",
	},
	float = true,
	center = true,
	size = "1000 700",
})

rule({
	name = "zoom-main",
	match = {
		class = "^(zoom|Zoom|us\\.zoom\\.Zoom)$",
		title = "^Zoom Workplace - (Free|Licensed) account$",
	},
	tile = true,
	opaque = true,
})

-- Every Zoom window (main, meeting, dialogs) maps with the title "Zoom Workplace"
-- and only gets its real title later. Static effects (float/size/center) are
-- only applied at map time, so float on open and fix the layout on retitle.
rule({
	name = "zoom-initial",
	match = {
		class = "^(zoom|Zoom|us\\.zoom\\.Zoom)$",
		initial_title = "^Zoom Workplace$",
	},
	float = true,
	center = true,
})

local function is_zoom(w)
	return w and (w.class == "zoom" or w.class == "Zoom" or w.class == "us.zoom.Zoom")
end

hl.on("window.title", function(w)
	if not is_zoom(w) or w.initial_title ~= "Zoom Workplace" then
		return
	end
	local t = w.title
	if t:match("^Zoom Workplace %- %a+ account$") then
		if w.floating then
			hl.dispatch(hl.dsp.window.float({ action = "unset", window = w }))
		end
	elseif t == "Zoom Meeting" or t == "Zoom Webinar" or t == "Meeting" then
		if w.floating then
			hl.dispatch(hl.dsp.window.resize({ x = 1280, y = 720, window = w }))
			hl.dispatch(hl.dsp.window.center({ window = w }))
		end
	end
end)

rule({
	name = "zoom-meeting",
	match = {
		class = "^(zoom|Zoom|us\\.zoom\\.Zoom)$",
		title = "^(Zoom Meeting|Zoom Webinar|Meeting)$",
	},
	float = true,
	center = true,
	size = "1280 720",
	min_size = "960 540",
	idle_inhibit = "focus",
	opaque = true,
})

rule({
	name = "zoom-floating-video",
	match = {
		class = "^(zoom|Zoom|us\\.zoom\\.Zoom)$",
		title = "^(zoom_linux_float_video_window|Zoom - Free Account|Zoom - Licensed Account)$",
	},
	float = true,
	pin = true,
	size = "480 270",
	move = { "100%-500", "100%-310" },
	idle_inhibit = "focus",
})

rule({
	name = "zoom-share-toolbar",
	match = {
		class = "^(zoom|Zoom|us\\.zoom\\.Zoom)$",
		title = "^(as_toolbar|zoom_linux_float_video_window_as_toolbar)$",
	},
	float = true,
	pin = true,
	no_initial_focus = true,
})

rule({
	name = "zoom-join-dialog",
	match = {
		class = "^(zoom|Zoom|us\\.zoom\\.Zoom)$",
		title = "^(Join Meeting|Enter meeting passcode|Choose ONE of the audio conference options)$",
	},
	float = true,
	center = true,
})

rule({
	name = "zoom-transient-dialogs",
	match = {
		class = "^(zoom|Zoom|us\\.zoom\\.Zoom)$",
		title = "^(Invite|Participants|Breakout Rooms|Reactions|Rename|Recording|Polls/Quizzes)$",
	},
	float = true,
	center = true,
	size = "900 650",
})

rule({
	name = "zoom-chat-popout",
	match = {
		class = "^(zoom|Zoom|us\\.zoom\\.Zoom)$",
		title = "^(Meeting Chat|Team Chat|Chat)$",
	},
	float = true,
	center = true,
	size = "900 700",
})
