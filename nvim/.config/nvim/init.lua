-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Import Lua modules
require('jp/options')
require('jp/lazy')
require('jp/autocmds')
require('jp/keymaps')
require('jp/telescope')
require('jp/lspconfig')
require('jp/nvim-cmp')
require('jp/nvim-treesitter')
