require("catppuccin").setup({
    transparent_background = true,
    term_colors = true,
    integrations = {
       native_lsp = {
          enabled = true,
        },
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
