-- vim.pack.add({
--   { src = "https://github.com/srcery-colors/srcery-vim" },
-- })

vim.pack.add({
  { src = "https://github.com/deparr/tairiki.nvim" },
})

require('tairiki').setup {
  palette = "dimmed"
}

vim.cmd("colorscheme tairiki")

