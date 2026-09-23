-- Highlight when yanking (copying) text
-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "zls" then
      vim.defer_fn(function()
        if vim.api.nvim_buf_is_valid(args.buf) then
          vim.lsp.semantic_tokens.force_refresh(args.buf)
        end
      end, 500)
    end
  end,
})
