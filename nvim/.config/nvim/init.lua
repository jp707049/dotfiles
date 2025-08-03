vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.termguicolors = true
vim.o.wrap = false
vim.o.swapfile = false
vim.o.winborder = "rounded"
vim.o.clipboard = "unnamedplus"
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.showmode = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.o.cmdheight = 0
vim.o.guicursor = ""

vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>")
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- jj and kk to switch to normal mode
vim.keymap.set("i", "jj", "<Esc>", { desc = "Switch back to normal mode" })
vim.keymap.set("i", "kk", "<Esc>", { desc = "Switch back to normal mode" })

-- <leader><leader> toggles between buffers
vim.keymap.set("n", "<leader><leader>", "<c-^>", { desc = "Toggles between buffers" })

-- fzf
vim.keymap.set("n", "<leader>ff", function() require("fzf-lua").files() end, { desc = "Fzf Find Files" })
vim.keymap.set("n", "<leader>fb", function() require("fzf-lua").buffers() end, { desc = "Fzf Buffers" })

vim.pack.add({
  { src = "https://github.com/chriskempson/vim-tomorrow-theme" },
  { src = "https://github.com/rebelot/kanagawa.nvim" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/ibhagwan/fzf-lua" },
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
  { src = "https://github.com/nvim-lualine/lualine.nvim" },
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
      if client:supports_method("textDocument/completion") then
	vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
      end
    end,
})

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

require "nvim-treesitter.configs".setup({
  ensure_installed = { "zig" },
  highlight = { enable = true }
})

require("fzf-lua").setup({
  fzf_colors = { true, }
})

vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
vim.lsp.enable({ "lua_ls", "zls" })

require("gitsigns").setup({
  signs = {
    add = { text = "┃" },
    change = { text = "┃" },
    delete = { text = "┃" },
    topdelete = { text = "┃" },
    changedelete = { text = "┃" },
  },
})

require("lualine").setup({
  options = {
    component_separators = { left = ' ', right = ' '},
    section_separators = { left = ' ', right = ' '},
  },
  sections = {
    lualine_b = {},
  },
})

vim.cmd("colorscheme kanagawa-dragon")
