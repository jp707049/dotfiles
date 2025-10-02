-- Source nvim
vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>")

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- jj and kk to switch to normal mode
vim.keymap.set("i", "jj", "<Esc>", { desc = "Switch back to normal mode" })
vim.keymap.set("i", "kk", "<Esc>", { desc = "Switch back to normal mode" })

-- <leader><leader> toggles between buffers
vim.keymap.set("n", "<leader><leader>", "<c-^>", { desc = "Toggles between buffers" })

-- Fuzzy find
vim.keymap.set("n", "<leader>ff", ":Fzf files<CR>", { desc = "Find Files" })
vim.keymap.set("n", "<leader>fb", ":Fzf buffers<CR>", { desc = "Find Buffers" })

-- lsp keymaps
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)

