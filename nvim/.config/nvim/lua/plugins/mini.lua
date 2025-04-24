return {
  'echasnovski/mini.nvim',
  config = function()
    local statusline = require 'mini.statusline'
    -- set use_icons to true if you have a Nerd Font
    statusline.setup { use_icons = vim.g.have_nerd_font }
  end,
}
