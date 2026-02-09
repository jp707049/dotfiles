vim.pack.add({
  { src = "https://github.com/deparr/tairiki.nvim" },
})

require('tairiki').setup {
  plugins = {
    all = true,
  },
}
vim.cmd("colorscheme tairiki")

