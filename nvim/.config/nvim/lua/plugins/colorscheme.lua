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
    enabled = true,
  }
}
