-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.window_background_opacity = 0.5 -- 0.7 for windows
-- config.default_prog = { 'C:\\Users\\test\\scoop\\shims\\nu.exe' }
config.font = wezterm.font('Fira Code Nerd Font', { weight = 'Regular' })

local act = wezterm.action
config.keys = {
	{
		key = 't',
		mods = 'CTRL',
		action = act.SpawnTab 'DefaultDomain'
	},
	{
		key = "w",
		mods = 'CTRL',
		action = act.CloseCurrentTab { confirm = false }
	},
}

return config
