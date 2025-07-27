-- return {
--   "blazkowolf/gruber-darker.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd([[colorscheme gruber-darker]])
--   end,
-- }

return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme carbonfox]])
    end,
    enabled = false,
  },
  {
    "jesseleite/nvim-noirbuddy",
    dependencies = {
      { 'tjdevries/colorbuddy.nvim' }
    },
    lazy = false,
    priority = 1000,
    config = function()
      require('noirbuddy').setup {
        preset = 'minimal',
      }
    end,
    enabled = false,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    config = function ()
      require("catppuccin").setup({
        transparent_background = true,
      })

      vim.cmd([[ colorscheme catppuccin]])
    end,
    enabled = false,
  },
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('onedark').setup {
        style = 'darker'
      }
      -- Enable theme
      require('onedark').load()
    end,
    enabled = true,
  }
}
