vim.g.mapleader = " "

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Disable arrow keys
--map("", "<up>", "<nop>")
--map("", "<down>", "<nop>")
--map("", "<left>", "<nop>")
--map("", "<right>", "<nop>")

-- Clear search highlight
map("n", "<leader>nh", ":nohl<CR>")

-- toggle between buffers
map("n", "<leader><leader>", "<c-^>")

-- quick save
map("n", "<leader>w", ":w<CR>")
-- quick exit
map("n", "<leader>x", ":q!<CR>")
