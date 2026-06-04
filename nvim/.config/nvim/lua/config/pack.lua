-- Neovim 0.12 built-in plugin manager.
-- Update: :lua vim.pack.update()
-- Lockfile: nvim-pack-lock.json (commit to VCS)

vim.pack.add({
  -- Colorscheme
  { src = "https://github.com/rebelot/kanagawa.nvim" },
  -- LSP server installer
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  -- Fuzzy finder (files + buffers only)
  { src = "https://github.com/ibhagwan/fzf-lua" },
  -- Lsp progress
  { src = "https://github.com/j-hui/fidget.nvim" },
})

-- Colorscheme
vim.cmd.colorscheme("kanagawa")

-- Mason
require("mason").setup({ ui = { border = "rounded" } })
require("mason-lspconfig").setup({
  ensure_installed = { "clangd", "zls", "rust_analyzer", "basedpyright", "ruff" },
  -- automatic_enable = true is the 0.12 default; mason-lspconfig calls
  -- vim.lsp.enable() for each installed server automatically.
  automatic_enable = true,
})

-- Fidget
require("fidget").setup({})

-- fzf-lua (minimal — only used for files and buffers, see keymaps)
require("fzf-lua").setup({ winopts = { border = "rounded" } })
