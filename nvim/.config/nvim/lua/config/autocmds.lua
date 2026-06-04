-- =============================================================================
-- Autocommands
-- =============================================================================

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- ── Highlight on yank ──────────────────────────────────────────────────────
augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
  group    = "YankHighlight",
  callback = function() vim.highlight.on_yank({ timeout = 200 }) end,
})

-- ── Return to last cursor position ────────────────────────────────────────
augroup("LastPosition", { clear = true })
autocmd("BufReadPost", {
  group    = "LastPosition",
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- ── Resize splits when the window is resized ──────────────────────────────
augroup("ResizeSplits", { clear = true })
autocmd("VimResized", {
  group    = "ResizeSplits",
  command  = "tabdo wincmd =",
})

-- ── Remove trailing whitespace on write ────────────────────────────────────
augroup("TrailingWhitespace", { clear = true })
autocmd("BufWritePre", {
  group    = "TrailingWhitespace",
  pattern  = "*",
  callback = function()
    local save = vim.fn.winsaveview()
    vim.cmd([[keeppatterns %s/\s\+$//e]])
    vim.fn.winrestview(save)
  end,
})

-- ── Per-filetype indentation ────────────────────────────────────────────────
augroup("FileTypeIndent", { clear = true })
autocmd("FileType", {
  group   = "FileTypeIndent",
  pattern = { "lua", "json", "yaml", "toml", "html", "css", "javascript", "typescript" },
  callback = function()
    vim.opt_local.tabstop     = 2
    vim.opt_local.shiftwidth  = 2
    vim.opt_local.softtabstop = 2
  end,
})

-- ── Terminal settings ──────────────────────────────────────────────────────
augroup("Terminal", { clear = true })
autocmd("TermOpen", {
  group    = "Terminal",
  callback = function()
    vim.opt_local.number         = false
    vim.opt_local.relativenumber = false
    vim.opt_local.signcolumn     = "no"
    vim.cmd("startinsert")
  end,
})

-- ── Close certain windows with just 'q' ───────────────────────────────────
augroup("QuickClose", { clear = true })
autocmd("FileType", {
  group   = "QuickClose",
  pattern = { "help", "man", "qf", "lspinfo", "checkhealth", "query" },
  callback = function()
    vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = true, silent = true })
  end,
})
