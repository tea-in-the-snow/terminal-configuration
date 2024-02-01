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
-- config.default_workspace = "~"

config.detect_password_input = true

-- color_schemes
-- dark
config.color_scheme = "Apple Classic"
-- config.color_scheme = "Chester"
-- config.color_scheme = "DanQing (base16)"
-- config.color_scheme = "Zenburn"
-- config.color_scheme = "Unikitty Reversible (base16)"
-- config.color_scheme = "Sakura"
-- config.color_scheme = "Sea Shells (Gogh)"
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
-- config.font = wezterm.font("Cascadia Code")

-- config.window_background_gradient = {
-- 	colors = { "white", "pink" },
-- 	orientation = {
-- 		Radial = {
-- 			-- Specifies the x coordinate of the center of the circle,
-- 			-- in the range 0.0 through 1.0.  The default is 0.5 which
-- 			-- is centered in the X dimension.
-- 			cx = 0.5,
--
-- 			-- Specifies the y coordinate of the center of the circle,
-- 			-- in the range 0.0 through 1.0.  The default is 0.5 which
-- 			-- is centered in the Y dimension.
-- 			cy = 0.5,
--
-- 			-- Specifies the radius of the notional circle.
-- 			-- The default is 0.5, which combined with the default cx
-- 			-- and cy values places the circle in the center of the
-- 			-- window, with the edges touching the window edges.
-- 			-- Values larger than 1 are possible.
-- 			radius = 1.0,
-- 		},
-- 	},
-- }

-- background
-- config.win32_system_backdrop = "Acrylic"
-- config.window_background_opacity = 0.9
-- config.window_background_image = "./2.jpg"
config.background = {
	{
		source = {
			-- File = "/home/tea-in-the-snow/Pictures/wallpaper/v2-deb75bfa2835b28a27f27377f4173caf_r.png",
			File = "/home/tea-in-the-snow/Pictures/dark/2.jpg",
			-- File = "/home/tea-in-the-snow/Pictures/wallpaper/7.png",
			-- File = "/home/tea-in-the-snow/Pictures/wallpaper/v2-d29a9ed9425ed9aae1d78cd5e9f3a9f1_r.png",
			-- File = "/home/tea-in-the-snow/Pictures/dark/1.jpg",
			-- File = "C:/Users/xiashaoran/Pictures/Saved Pictures/dark/2.jpg"
		},
		height = "Cover",
		-- opacity = 0.5,
		hsb = {
			brightness = 0.8,
			-- hue = 0.5,
			-- saturation = 0.5,
		},
	},
}
-- config.window_background_image_hsb = {
-- 	-- Darken the background image by reducing it to 1/3rd
-- 	brightness = 0.1,
--
-- 	-- You can adjust the hue by scaling its value.
-- 	-- a multiplier of 1.0 leaves the value unchanged.
-- 	hue = 1.0,
--
-- 	-- You can adjust the saturation also.
-- 	saturation = 1.0,
-- }

config.font = wezterm.font_with_fallback({
	-- "Comic Mono",
	-- "GoMono Nerd Font Mono",
	-- "ShureTechMono Nerd Font Mono",
	-- "CaskaydiaCove Nerd Font Mono",

	-- "ComicShannsMono Nerd Font Mono",
	-- "DaddyTimeMono Nerd Font Mono",
	-- "FiraCode Nerd Font Mono",
	"CaskaydiaCove Nerd Font Mono",
	"FantasqueSansM Nerd Font Mono",
	"CodeNewRoman Nerd Font Mono",
	"Hack Nerd Font Mono",
	"SpaceMono Nerd Font Mono",
	"Hurmit Nerd Font Mono",
	-- "Cascadia Mono",
	"DengXian", --Chinese
	"Nishiki-teki",
	"Lotuscoder",
	"MT Extra",
})
config.font_size = 22.0

-- config.command_palette_bg_color = "#333333"
-- config.command_palette_bg_color = "#2F2F4F"

-- -- wezterm.on("gui-startup", function(cmd)
-- 	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
-- 	-- Create a split occupying the right 1/3 of the screen
-- 	pane:split({ size = 0.5 })
-- 	-- Create another split in the right of the remaining 2/3
-- 	-- of the space; the resultant split is in the middle
-- 	-- 1/3 of the display and has the focus.
-- 	-- pane:split { size = 0.5 }
-- end)

config.enable_tab_bar = true

config.window_padding = {
	left = 20,
	right = 20,
	top = 10,
	bottom = 10,
}

config.window_close_confirmation = "NeverPrompt"

-- cursor
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 600
config.cursor_blink_ease_out = "Linear"

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
