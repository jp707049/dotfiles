-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- Font
config.font = wezterm.font('Hack Nerd Font Mono')
config.font_size = 22.0

-- Tab bar
config.use_fancy_tab_bar = true
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

-- For example, changing the color scheme:
config.color_scheme = 'Gruvbox dark, medium (base16)'

-- Window
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_padding = {
  left = '1cell',
  right = '1cell',
  top = '1cell',
  bottom = '0.5cell',
}

-- and finally, return the configuration to wezterm
return config
