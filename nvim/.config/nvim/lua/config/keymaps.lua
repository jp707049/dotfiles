local map = vim.keymap.set

-- Basics
map("n", "<Esc>",      "<cmd>nohlsearch<CR>")
map("n", "<C-h>",      "<C-w>h")
map("n", "<C-j>",      "<C-w>j")
map("n", "<C-k>",      "<C-w>k")
map("n", "<C-l>",      "<C-w>l")
map("n", "<C-d>",      "<C-d>zz")
map("n", "<C-u>",      "<C-u>zz")

-- fzf-lua: files and buffers only
local fzf = require("fzf-lua")
map("n", "<leader>ff", fzf.files,   { desc = "Find files" })
map("n", "<leader>fb", fzf.buffers, { desc = "Find buffers" })

-- Diagnostics (0.12 built-ins handle gra/grn/grr/gri/grt via LspAttach)
map("n", "]d", vim.diagnostic.goto_next)
map("n", "[d", vim.diagnostic.goto_prev)
map("n", "<leader>e", vim.diagnostic.open_float)
