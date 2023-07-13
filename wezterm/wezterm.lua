-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

config.color_scheme = "tokyonight"

config.window_padding = {
	left = 60,
	right = 60,
}

config.window_background_gradient = {
	orientation = "Vertical",
	colors = {
		"#0f0c29",
		"#302b63",
		"#24243e",
	},
}

config.window_background_opacity = 0.7

config.default_prog = { "C:/Program Files/Git/bin/bash.exe --login -i", "-l" }
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- and finally, return the configuration to wezterm
return config
