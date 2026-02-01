-- vim.pack.add({
--   { src = "https://github.com/srcery-colors/srcery-vim" },
-- })

-- vim.pack.add({
--   { src = "https://github.com/deparr/tairiki.nvim" },
-- })

-- vim.pack.add({
--   { src = "https://codeberg.org/ficd/ashen.nvim" },
-- })

vim.pack.add({
  { src = "https://github.com/tjdevries/colorbuddy.nvim" },
  { src = "https://github.com/jesseleite/nvim-noirbuddy" },
})

require('noirbuddy').setup {
  preset = 'minimal',
}

vim.cmd("colorscheme noirbuddy")

