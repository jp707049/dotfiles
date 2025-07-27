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
    "chriskempson/vim-tomorrow-theme",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme Tomorrow-Night-Bright]])
    end,
    enabled = true,
  },
  {
    "armannikoyan/rusty",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme rusty]])
    end,
    enabled = false,
  }
}
