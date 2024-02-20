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

-- lanuch zsh by default
config.default_prog = { "/usr/bin/zsh", "-l" }

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
-- config.color_scheme = "Catppuccin Latte"
-- config.color_scheme = "Default (light) (terminal.sexy)"
-- config.color_scheme = "Mocha (light) (terminal.sexy)"
-- config.color_scheme = "purplepeter"
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
			-- File = "/home/shaoran/图片/wallpaper/v2-deb75bfa2835b28a27f27377f4173caf_r.png",
			-- File = "/home/shaoran/图片/light/1.jpg",
			-- File = "/home/shaoran/图片/light/2.png",
			File = "/home/shaoran/图片/dark/6.jpg",
			-- File = "/home/shaoran/图片/wallpaper/4.jpg",
			-- File = "/home/shaoran/图片/SavedPictures/comic/1.png",
			-- File = "/home/shaoran/图片/wallpaper/v2-d29a9ed9425ed9aae1d78cd5e9f3a9f1_r.png",
			-- File = "/home/shaoran/图片/dark/1.jpg",
			-- File = "C:/Users/xiashaoran/图片/Saved Pictures/dark/2.jpg",
		},
		height = "Cover",
		-- opacity = 0.5,
		hsb = {
			brightness = 0.3,
			-- hue = 0.5,
			-- saturation = 0.5,
		},
	},
}

config.font = wezterm.font_with_fallback({
	"SauceCodePro Nerd Font Mono",
	"CaskaydiaCove Nerd Font Mono",
	"SpaceMono Nerd Font Mono",
	"JetBrainsMono Nerd Font Mono",
	"Hack Nerd Font Mono",
	"FantasqueSansM Nerd Font Mono",
	"Noto Sans CJK SC",
	"UbuntuMono Nerd Font Mono",
	"Terminess Nerd Font Mono",
	"CodeNewRoman Nerd Font Mono",
	"Hurmit Nerd Font Mono",
	-- "Cascadia Mono",
	"DengXian", --Chinese
	"Nishiki-teki",
	"Lotuscoder",
	"MT Extra",
})
config.font_size = 15.0

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
