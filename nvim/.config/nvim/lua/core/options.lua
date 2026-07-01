-- set leader to <SPACE>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- line numbers
vim.o.number = true
vim.o.relativenumber = true

-- enable mouse mode
vim.o.mouse = "a"

-- disable showmode (use statusline instead)
vim.o.showmode = false

-- keep current content top + left when splitting
vim.o.splitright = ture
vim.o.splitbelow = true

-- sync clipboard between OS and Neovim.
-- schedule the setting after `UiEnter` because it can increase startup-time.
-- remove this option if you want your OS clipboard to remain independent.
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

-- case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- deep signcolumn on by default
vim.o.signcolumn = "yes"

-- decrease update time
vim.o.updatetime = 250

-- preview substitutions live, as you type in the buffer
vim.o.inccommand = "nosplit"

-- minimal number of screen lines to keep above and below the cursor
vim.o.scrolloff = 10

-- enable true colors
vim.o.termguicolors = true

-- rounded borders
vim.o.winborder = "rounded"

-- allow virtual text
vim.diagnostic.config({ virtual_text = true, virtual_lines = false })

