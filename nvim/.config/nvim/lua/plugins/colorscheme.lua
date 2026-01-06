-- vim.pack.add({
--   { src = "https://github.com/srcery-colors/srcery-vim" },
-- })

vim.pack.add({
  { src = "https://github.com/deparr/tairiki.nvim" },
})

require('tairiki').setup {
  palette = "dark",

  -- palette definitions are in lua/tairiki/palette
  colors = function(c)
    c.bg = "#000000"
  end,
}

vim.cmd("colorscheme tairiki")

