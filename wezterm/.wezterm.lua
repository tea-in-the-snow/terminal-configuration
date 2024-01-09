-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

local act = wezterm.action

-- This is where you actually apply your config choices

-- run wsl bu default
config.default_prog = { "wsl" }
config.default_workspace = "~"

config.detect_password_input = true

-- color_schemes
-- dark
-- config.color_scheme = "AdventureTime"
-- config.color_scheme = "Bitmute (terminal.sexy)"
-- config.color_scheme = "Apple Classic"
-- config.color_scheme = "Chester"
-- config.color_scheme = "DanQing (base16)"
-- config.color_scheme = "Zenburn"
-- config.color_scheme = "Unikitty Reversible (base16)"
-- config.color_scheme = "Sakura"
config.color_scheme = "Sea Shells (Gogh)"
-- config.color_scheme = "Pasque (base16)"
-- config.color_scheme = "Obsidian"

-- config.color_scheme = "Mariana"

-- config.color_scheme = "Toy Chest (Gogh)"

-- light
-- config.color_scheme = "Builtin Solarized Light"
-- config.color_scheme = "Catppuccin Latte"
-- config.color_scheme = "dawnfox"
-- config.color_scheme = "Default (light) (terminal.sexy)"
-- config.color_scheme = "Solarized Light (Gogh)"
-- config.color_scheme = "Novel"

-- config.font = wezterm.font("Hack Nerd Font Mono")
-- config.font = wezterm.font("FiraCode Nerd Font Mono")
config.font = wezterm.font("Cascadia Code")
config.font_size = 14.0

-- background
-- config.win32_system_backdrop = "Acrylic"
config.window_background_opacity = 0.9
config.text_background_opacity = 0.8

-- config.command_palette_bg_color = "#333333"
config.command_palette_bg_color = "#2F2F4F"

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
	-- Create a split occupying the right 1/3 of the screen
	pane:split({ size = 0.75 })
	-- Create another split in the right of the remaining 2/3
	-- of the space; the resultant split is in the middle
	-- 1/3 of the display and has the focus.
	-- pane:split { size = 0.5 }
end)

config.window_padding = {
	left = 10,
	right = 10,
	top = 10,
	bottom = 10,
}
config.window_close_confirmation = "NeverPrompt"

-- keymappings
config.keys = {
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Next"),
	},
}

-- and finally, return the configuration to wezterm
return config
