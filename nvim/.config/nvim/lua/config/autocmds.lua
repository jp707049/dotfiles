local api = vim.api

-- don't auto comment new line
api.nvim_create_autocmd("BufEnter", { command = [[set formatoptions-=cro]] })

-- Highlight on yank
api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Set indentation to 2 spaces for following file types
api.nvim_create_augroup("setIndent", { clear = true })
api.nvim_create_autocmd("FileType", {
  group = "setIndent",
  pattern = { "lua", "yaml" },
  command = "setlocal shiftwidth=2 tabstop=2"
})

