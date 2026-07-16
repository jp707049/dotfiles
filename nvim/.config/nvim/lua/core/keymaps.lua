-- clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- quick save
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>")

-- Jump to start and end of line using the home row keys
vim.keymap.set("", "H", "^")
vim.keymap.set("", "L", "$")

-- <leader><leader> toggles between buffers
vim.keymap.set("n", "<leader><leader>", "<c-^>")

-- always center search results
vim.keymap.set("n", "n", "nzz", { silent = true })
vim.keymap.set("n", "N", "Nzz", { silent = true })
vim.keymap.set("n", "*", "*zz", { silent = true })
vim.keymap.set("n", "#", "#zz", { silent = true })
vim.keymap.set("n", "g*", "g*zz", { silent = true })

-- fff
vim.keymap.set("n", "<leader>ff", function() require("fff").find_files() end, { desc = "FFFind files" })
vim.keymap.set("n", "<leader>lg", function() require("fff").live_grep() end, { desc = "Live content grep" })

-- lsp
vim.keymap.set("n", "<leader>lf", function()
    vim.lsp.buf.format({ async = true })
end, { desc = "Format current buffer" })
