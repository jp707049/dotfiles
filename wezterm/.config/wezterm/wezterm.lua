local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = wezterm.config_builder()

-- startup
wezterm.on('gui-startup', function(cmd)
  local _, _, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- window
config.window_decorations = "RESIZE"
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- tab_bar
config.hide_tab_bar_if_only_one_tab = true
config.enable_tab_bar = true

-- colorscheme
config.color_scheme = 'Gruvbox dark, medium (base16)'

-- font
config.font_size = 20.0

-- window_close_confirmation
config.window_close_confirmation = 'NeverPrompt'

-- keymaps
config.keys = {
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
}

return config
