-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- fish shell🐟
config.default_prog = { '/usr/bin/fish', '-l' }
-- remained default cuz it's okay for me
config.initial_cols = 120
config.initial_rows = 28

config.color_scheme = 'BirdsOfParadise'
config.enable_kitty_graphics=true
config.enable_wayland = false
--config.enable_kitty_keyboard=true
config.font = wezterm.font 'FiraCode Nerd Font' -- installed by Embellish

--Plugins
local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm") -- better tabs
bar.apply_to_config(config)

config.window_background_opacity = .955

-- Finally, return the configuration to wezterm:
return config
