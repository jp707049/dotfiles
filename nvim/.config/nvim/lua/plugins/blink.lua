vim.pack.add({
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range('1.*') },
})

require("blink.cmp").setup({
  appearance = {
    nerd_font_variant = "mono"
  },
  list = { selection = { preselect = false, auto_insert = false } },
  keymap = {
    ['<Tab>'] = { 'select_next', 'snippet_forward', 'fallback' },
    ["<CR>"] = { "accept", "fallback" },
    ["<C-u>"] = { "scroll_documentation_up", "fallback" },
    ["<C-d>"] = { "scroll_documentation_down", "fallback" },
    ["<C-e>"] = { "hide", "fallback" },
  },
  completion = { documentation = { auto_show = false } },
  sources = {
    default = { 'lsp', 'path' },
  },
  fuzzy = { implementation = "prefer_rust_with_warning" },
})
