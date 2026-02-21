vim.pack.add({
  { src = "https://github.com/catppuccin/nvim" },
})

require("catppuccin").setup({
  term_colors = true,
  transparent_background = true,
  float = {
    transparent = true,
    solid = true,
  },
  integrations = {
    cmp = true,
  },
})

vim.cmd("colorscheme catppuccin-mocha")

