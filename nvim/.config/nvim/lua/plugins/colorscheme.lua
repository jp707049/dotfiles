vim.pack.add({
  { src = "https://github.com/catppuccin/nvim" },
})

require("catppuccin").setup({
  transparent_background = true,
  integrations = {
    cmp = true,
  },
})

vim.cmd("colorscheme catppuccin-mocha")

