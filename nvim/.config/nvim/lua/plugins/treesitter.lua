vim.pack.add({
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua",
    "vim",
    "vimdoc",
    "c",
    "rust",
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})

