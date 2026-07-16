vim.lsp.config.lua_ls = {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }, -- Tells the LSP to recognize the 'vim' global
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    },
  },
}

vim.lsp.enable("rust_analyzer")
vim.lsp.enable("lua_ls")
vim.lsp.enable("zls")
vim.lsp.enable("basedpyright")
