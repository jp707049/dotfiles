local g = vim.g       -- Global variables
local opt = vim.opt   -- Set options (global/buffer/windows-scoped)

opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.swapfile = false
opt.completeopt = "menuone,noinsert,noselect"

opt.number = true
opt.relativenumber = true
opt.showmode = false
opt.guicursor = ""
opt.wrap = false
opt.scrolloff = 8
opt.signcolumn = "yes"

opt.splitright = true
opt.splitbelow = true

opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.laststatus=3

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

-- ms to wait for trigger an event
opt.updatetime = 400 

-- Disable nvim intro
opt.shortmess:append "sI"

-- Disable builtin plugins
local disabled_built_ins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
  "tutor",
  "rplugin",
  "synmenu",
  "optwin",
  "compiler",
  "bugreport",
  "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
  g["loaded_" .. plugin] = 1
end
