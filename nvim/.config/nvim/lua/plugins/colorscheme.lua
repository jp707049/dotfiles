return {
  "RRethy/nvim-base16",
  priority = 1000,
  lazy = false,
  config = function()
    vim.cmd([[colorscheme base16-chalk]])
  end,
}
