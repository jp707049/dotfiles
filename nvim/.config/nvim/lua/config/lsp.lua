-- Diagnostics
-- 0.12 BREAKING: signs must be configured here, not via :sign-define
local sev = vim.diagnostic.severity
vim.diagnostic.config({
  severity_sort = true,
  virtual_text  = { prefix = "●", source = "if_many" },
  float         = { border = "rounded", source = true },
  signs = {
    text = {
      [sev.ERROR] = " ",
      [sev.WARN]  = " ",
      [sev.INFO]  = " ",
      [sev.HINT]  = "󰌵 ",
    },
  },
})

-- Map LSP completion kind integers to user-friendly text labels
local completion_kinds = {
  [1]  = "Text",       [2]  = "Method",    [3]  = "Function",  [4]  = "Constructor",
  [5]  = "Field",      [6]  = "Variable",  [7]  = "Class",     [8]  = "Interface",
  [9]  = "Module",     [10] = "Property",  [11] = "Unit",      [12] = "Value",
  [13] = "Enum",       [14] = "Keyword",   [15] = "Snippet",   [16] = "Color",
  [17] = "File",       [18] = "Reference", [19] = "Folder",    [20] = "EnumMember",
  [21] = "Constant",   [22] = "Struct",    [23] = "Event",     [24] = "Operator",
  [25] = "TypeParameter"
}

-- LspAttach: format-on-save + inlay hints toggle + native completion formatting
-- 0.12 provides gd/K/gra/grn/grr/gri/grt/gO globally — no need to remap.
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if not client then return end

    -- 1. Native Neovim 0.12 Autocomplete Setup
    if client:supports_method("textDocument/completion") then
      -- Enable the built-in 0.12 autotrigger completion
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
      
      -- Override the client's handler to format the menu items with their Kind
      local orig_handler = client.handlers["textDocument/completion"] or vim.lsp.handlers["textDocument/completion"]
      client.handlers["textDocument/completion"] = function(err, result, ctx, config)
        if result and result.items then
          for _, item in ipairs(result.items) do
            local kind_str = completion_kinds[item.kind] or "Unknown"
            -- item.detail or item.label is what shows in the pop-up menu. 
            -- We append the [Kind] right next to it so it renders in the menu.
            if not item.label:match("%[.*%]$") then
              item.label = string.format("%s  [%s]", item.label, kind_str)
            end
          end
        end
        orig_handler(err, result, ctx, config)
      end
    end

    -- Format on save (skip ruff for pyright, skip pyright for ruff)
    local fmt_clients = { clangd = true, zls = true, rust_analyzer = true, ruff = true }
    if fmt_clients[client.name] then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer   = ev.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = ev.buf, async = false,
            filter = function(c) return c.name == client.name end })
        end,
      })
    end

    -- Inlay hints toggle
    if client:supports_method("textDocument/inlayHint") then
      vim.keymap.set("n", "<leader>th", function()
        vim.lsp.inlay_hint.enable(
          not vim.lsp.inlay_hint.is_enabled({ bufnr = ev.buf }),
          { bufnr = ev.buf }
        )
      end, { buffer = ev.buf, desc = "Toggle inlay hints" })
    end

    -- Ruff: disable hover so Pyright handles K
    if client.name == "ruff" then
      client.server_capabilities.hoverProvider = false
    end
  end,
})
