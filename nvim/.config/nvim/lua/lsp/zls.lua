-- =============================================================================
-- zls  —  Zig Language Server
--
-- Install:  :MasonInstall zls
-- Docs:     https://github.com/zigtools/zls
-- =============================================================================

vim.lsp.config["zls"] = {
  cmd          = { "zls" },
  filetypes    = { "zig", "zir" },
  root_markers = { "build.zig", "build.zig.zon", ".git" },
  settings     = {
    zls = {
      -- Enable semantic token support (requires zls >= 0.12)
      semantic_tokens              = "full",
      -- Enable inlay hints for types and parameter names
      enable_inlay_hints           = true,
      inlay_hints_show_variable_type_hints = true,
      inlay_hints_show_parameter_name      = true,
      inlay_hints_show_builtin             = true,
      -- Auto-import assistance
      enable_autofix               = true,
      -- Enable snippets in completions
      enable_snippets              = true,
    },
  },
}
