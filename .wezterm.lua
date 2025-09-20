local wezterm = require("wezterm")

local act = wezterm.action

local wsl_domains = wezterm.default_wsl_domains()

-- wezterm.on("gui-startup", function(cmd)
-- 	local _, _, window = wezterm.mux.spawn_window(cmd or {})
-- 	window:gui_window():toggle_fullscreen()
-- end)

wezterm.on("gui-startup", function(cmd)
	local _, _, window = wezterm.mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

for _, domain in ipairs(wsl_domains) do
	domain.default_cwd = "~"
end

wezterm.on("update-right-status", function(window, pane)
	-- Each element holds the text for a cell in a "powerline" style << fade
	local cells = {}

	-- Figure out the cwd and host of the current pane.
	-- This will pick up the hostname for the remote host if your
	-- shell is using OSC 7 on the remote host.
	local cwd_uri = pane:get_current_working_dir()
	if cwd_uri then
		local cwd = ""
		local hostname = ""

		if type(cwd_uri) == "userdata" then
			-- Running on a newer version of wezterm and we have
			-- a URL object here, making this simple!

			cwd = cwd_uri.file_path
			hostname = cwd_uri.host or wezterm.hostname()
		else
			-- an older version of wezterm, 20230712-072601-f4abf8fd or earlier,
			-- which doesn't have the Url object
			cwd_uri = cwd_uri:sub(8)
			local slash = cwd_uri:find("/")
			if slash then
				hostname = cwd_uri:sub(1, slash - 1)
				-- and extract the cwd from the uri, decoding %-encoding
				cwd = cwd_uri:sub(slash):gsub("%%(%x%x)", function(hex)
					return string.char(tonumber(hex, 16))
				end)
			end
		end

		-- Remove the domain name portion of the hostname
		local dot = hostname:find("[.]")
		if dot then
			hostname = hostname:sub(1, dot - 1)
		end
		if hostname == "" then
			hostname = wezterm.hostname()
		end

		table.insert(cells, cwd)
		table.insert(cells, hostname)
	end

	-- I like my date/time in this style: "Wed Mar 3 08:14"
	local date = wezterm.strftime("%a %b %-d %H:%M")
	table.insert(cells, date)

	-- An entry for each battery (typically 0 or 1 battery)
	for _, b in ipairs(wezterm.battery_info()) do
		table.insert(cells, string.format("%.0f%%", b.state_of_charge * 100))
	end

	-- The powerline < symbol
	local LEFT_ARROW = utf8.char(0xe0b3)
	-- The filled in variant of the < symbol
	local SOLID_LEFT_ARROW = utf8.char(0xe0b2)

	-- Color palette for the backgrounds of each cell
	local colors = {
		"#3c1361",
		"#52307c",
		"#663a82",
		"#7c5295",
		"#b491c8",
	}

	-- Foreground color for the text across the fade
	local text_fg = "#c0c0c0"

	-- The elements to be formatted
	local elements = {}
	-- How many cells have been formatted
	local num_cells = 0

	-- Translate a cell into elements
	function push(text, is_last)
		local cell_no = num_cells + 1
		table.insert(elements, { Foreground = { Color = text_fg } })
		table.insert(elements, { Background = { Color = colors[cell_no] } })
		table.insert(elements, { Text = " " .. text .. " " })
		if not is_last then
			table.insert(elements, { Foreground = { Color = colors[cell_no + 1] } })
			table.insert(elements, { Text = SOLID_LEFT_ARROW })
		end
		num_cells = num_cells + 1
	end

	while #cells > 0 do
		local cell = table.remove(cells, 1)
		push(cell, #cells == 0)
	end

	window:set_right_status(wezterm.format(elements))
end)

return {
	adjust_window_size_when_changing_font_size = false,
	audible_bell = "Disabled",
	-- color_scheme = 'Catppuccin Frappe',
	disable_default_key_bindings = true,
	exit_behavior = "Close",
	font = wezterm.font_with_fallback({ "ComicCodeLigatures NF", "JetBrainsMono NF" }),
	-- font = wezterm.font_with_fallback({ "JetBrainsMono NF", "ComicCodeLigatures NF" }),
	warn_about_missing_glyphs = false,
	font_size = 12,
	front_end = "OpenGL",
	force_reverse_video_cursor = true,
	hide_mouse_cursor_when_typing = true,
	hide_tab_bar_if_only_one_tab = true,
	leader = { key = "a", mods = "ALT" },
	keys = {
		{ action = act.ResetFontSize, mods = "CTRL", key = "0" },
		{ action = act.DecreaseFontSize, mods = "CTRL", key = "-" },
		{ action = act.IncreaseFontSize, mods = "CTRL", key = "=" },
		{ action = act.Nop, mods = "ALT", key = "Enter" },
		{ action = act.ToggleFullScreen, key = "F11" },
		{ action = act.ActivateCommandPalette, mods = "CTRL|SHIFT", key = "P" },
		{ action = act.CopyTo("Clipboard"), mods = "CTRL|SHIFT", key = "C" },
		{ action = act.PasteFrom("Clipboard"), mods = "CTRL|SHIFT", key = "V" },
		-- { action = act.ActivatePaneDirection("Left"), mods = "CTRL|SHIFT", key = "LeftArrow" },
		-- { action = act.ActivatePaneDirection("Right"), mods = "CTRL|SHIFT", key = "RightArrow" },
		-- { action = act.ActivatePaneDirection("Up"), mods = "CTRL|SHIFT", key = "UpArrow" },
		-- { action = act.ActivatePaneDirection("Down"), mods = "CTRL|SHIFT", key = "DownArrow" },
		{ action = act.SpawnTab("CurrentPaneDomain"), mods = "LEADER", key = "c" },
		{
			action = act.TogglePaneZoomState,
			mods = "LEADER",
			key = "m",
		},
		{
			action = act.RotatePanes("Clockwise"),
			mods = "LEADER",
			key = "Space",
		},
		{
			mods = "LEADER",
			key = "0",
			action = wezterm.action.PaneSelect({
				mode = "SwapWithActive",
			}),
		},
		{
			action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
			mods = "LEADER",
			key = ".",
		},
		{
			action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
			mods = "LEADER",
			key = "-",
		},
		{
			action = act.CloseCurrentPane({ confirm = true }),
			mods = "LEADER",
			key = "x",
		},
		{
			action = act.CloseCurrentTab({ confirm = true }),
			mods = "LEADER",
			key = "e",
		},
		{
			action = act.ActivateTabRelative(1),
			mods = "LEADER",
			key = "n",
		},
		{
			action = act.ActivateTabRelative(-1),
			mods = "LEADER",
			key = "m",
		},
		{
			action = act.ActivateTabRelative(1),
			mods = "LEADER",
			key = "n",
		},
	},
	mouse_bindings = {
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "NONE",
			action = wezterm.action.CompleteSelection("Clipboard"),
		},
		{
			event = { Up = { streak = 1, button = "Right" } },
			mods = "NONE",
			action = wezterm.action.PasteFrom("Clipboard"),
		},
		-- Ctrl-click will open the link under the mouse cursor
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},
	scrollback_lines = 10000,
	show_update_window = true,
	use_dead_keys = false,
	unicode_version = 15,
	macos_window_background_blur = 100,
	window_background_opacity = 0.85,
	window_close_confirmation = "NeverPrompt",
	window_padding = {
		left = 0,
		right = 0,
		top = "0.6cell",
		bottom = 0,
	},
	wsl_domains = wsl_domains,
}
