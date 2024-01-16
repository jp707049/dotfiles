return {
  -- "RRethy/nvim-base16",
	"chriskempson/vim-tomorrow-theme",
  priority = 1000,
  lazy = false,
  config = function()
    vim.cmd([[colorscheme Tomorrow-Night-Bright]])
  end,
}
