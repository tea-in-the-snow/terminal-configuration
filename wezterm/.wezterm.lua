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
config.color_scheme = "Novel"

-- config.font = wezterm.font("Hack Nerd Font Mono")
-- config.font = wezterm.font("FiraCode Nerd Font Mono")
-- config.font = wezterm.font("Cascadia Code")

-- config.window_background_gradient = {
-- 	-- Can be "Vertical" or "Horizontal".  Specifies the direction
-- 	-- in which the color gradient varies.  The default is "Horizontal",
-- 	-- with the gradient going from left-to-right.
-- 	-- Linear and Radial gradients are also supported; see the other
-- 	-- examples below
-- 	orientation = "Horizontal",
--
-- 	-- Specifies the set of colors that are interpolated in the gradient.
-- 	-- Accepts CSS style color specs, from named colors, through rgb
-- 	-- strings and more
-- 	-- colors = {
-- 	-- 	"#0000FF",
-- 	-- 	-- "#0f0c29",
-- 	-- 	"#302b63",
-- 	-- 	"#24243e",
-- 	-- },
-- 	preset = "Warm",
--
-- 	-- Instead of specifying `colors`, you can use one of a number of
-- 	-- predefined, preset gradients.
-- 	-- A list of presets is shown in a section below.
-- 	-- preset = "YlOrBr",
--
-- 	-- Specifies the interpolation style to be used.
-- 	-- "Linear", "Basis" and "CatmullRom" as supported.
-- 	-- The default is "Linear".
-- 	interpolation = "Linear",
--
-- 	-- How the colors are blended in the gradient.
-- 	-- "Rgb", "LinearRgb", "Hsv" and "Oklab" are supported.
-- 	-- The default is "Rgb".
-- 	blend = "Rgb",
--
-- 	-- To avoid vertical color banding for horizontal gradients, the
-- 	-- gradient position is randomly shifted by up to the `noise` value
-- 	-- for each pixel.
-- 	-- Smaller values, or 0, will make bands more prominent.
-- 	-- The default value is 64 which gives decent looking results
-- 	-- on a retina macbook pro display.
-- 	-- noise = 64,
--
-- 	-- By default, the gradient smoothly transitions between the colors.
-- 	-- You can adjust the sharpness by specifying the segment_size and
-- 	-- segment_smoothness parameters.
-- 	-- segment_size configures how many segments are present.
-- 	-- segment_smoothness is how hard the edge is; 0.0 is a hard edge,
-- 	-- 1.0 is a soft edge.
--
-- 	-- segment_size = 11,
-- 	-- segment_smoothness = 0.0,
-- }

-- config.color_scheme = 'Github'
config.window_background_gradient = {
	colors = { "pink", "yellow" },
	orientation = {
		Radial = {
			-- Specifies the x coordinate of the center of the circle,
			-- in the range 0.0 through 1.0.  The default is 0.5 which
			-- is centered in the X dimension.
			cx = 0.75,

			-- Specifies the y coordinate of the center of the circle,
			-- in the range 0.0 through 1.0.  The default is 0.5 which
			-- is centered in the Y dimension.
			cy = 0.75,

			-- Specifies the radius of the notional circle.
			-- The default is 0.5, which combined with the default cx
			-- and cy values places the circle in the center of the
			-- window, with the edges touching the window edges.
			-- Values larger than 1 are possible.
			radius = 1.9,
		},
	},
}

config.font = wezterm.font_with_fallback({
	-- "Comic Mono",
	-- "GoMono Nerd Font Mono",
	-- "ShureTechMono Nerd Font Mono",
	-- "CaskaydiaCove Nerd Font Mono",

	-- "ComicShannsMono Nerd Font Mono",
	-- "DaddyTimeMono Nerd Font Mono",
	"FantasqueSansM Nerd Font Mono",
	"CaskaydiaCove Nerd Font Mono",
	"Hack Nerd Font Mono",
	-- "Cascadia Mono",
	"FiraCode Nerd Font Mono",
	"DengXian", --Chinese
	"Nishiki-teki",
	"Lotuscoder",
	"MT Extra",
})
config.font_size = 14.0

-- background
-- config.win32_system_backdrop = "Acrylic"
config.window_background_opacity = 0.95
config.text_background_opacity = 0.8

-- config.command_palette_bg_color = "#333333"
config.command_palette_bg_color = "#2F2F4F"

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
	-- Create a split occupying the right 1/3 of the screen
	pane:split({ size = 0.5 })
	-- Create another split in the right of the remaining 2/3
	-- of the space; the resultant split is in the middle
	-- 1/3 of the display and has the focus.
	-- pane:split { size = 0.5 }
end)

config.window_padding = {
	left = 20,
	right = 20,
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
