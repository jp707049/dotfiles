local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

-- Disable arrow keys
map("", "<up>", "<nop>")
map("", "<down>", "<nop>")
map("", "<left>", "<nop>")
map("", "<right>", "<nop>")

-- Clear search highlighting with <leader> and c
map("n", "<leader>ch", ":nohl<CR>")

-- Move around splits using Ctrl + {h,j,k,l}
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Reload configuration without restart nvim
map("n", "<leader>r", ":so %<CR>")

-- Fast saving with <leader> and s
map("n", "<leader>w", ":w<CR>")

-- Fast save and quit
map("n", "<leader>wq", ":wq!<CR>")
