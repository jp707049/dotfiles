local o = vim.o

vim.g.mapleader      = " "
vim.g.maplocalleader = "\\"

-- Appearance
o.number         = true
o.relativenumber = true
o.signcolumn     = "yes"
o.cursorline     = true
o.scrolloff      = 8
o.wrap           = false
o.termguicolors  = true
o.showmode       = false

-- Completion (0.12 native)
o.autocomplete = true
o.completeopt  = "menu,menuone,noselect,nearest,popup"
o.pumborder    = "rounded"

-- Search
o.ignorecase = true
o.smartcase  = true

-- Indent
o.expandtab   = true
o.tabstop     = 4
o.shiftwidth  = 4
o.smartindent = true

-- Files
o.undofile  = true
o.swapfile  = false
o.updatetime = 250

-- Splits
o.splitbelow = true
o.splitright = true

-- Misc
o.confirm    = true
o.shelltemp  = false

-- Treesitter folding
o.foldmethod     = "expr"
o.foldexpr       = "v:lua.vim.treesitter.foldexpr()"
o.foldlevelstart = 99

-- Yank highlight
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function() vim.highlight.on_yank() end,
})
