-- =============================================================================
-- Diagnostics  (Neovim 0.12)
--
-- BREAKING CHANGE in 0.12:
--   Diagnostic signs can NO LONGER be set with :sign-define or sign_define().
--   They MUST be configured through vim.diagnostic.config().
-- =============================================================================

local sev = vim.diagnostic.severity

vim.diagnostic.config({
  -- Sort so errors always appear above warnings in the sign column.
  severity_sort    = true,

  -- Don't update diagnostics while typing (less noise, better performance).
  update_in_insert = false,

  -- Virtual text: show only the highest-severity message per line.
  virtual_text = {
    severity  = { min = sev.HINT },
    prefix    = "●",
    spacing   = 4,
    -- Show source name so you know which server is complaining.
    source    = "if_many",
  },

  -- Show underlines for all severities.
  underline = { severity = { min = sev.HINT } },

  -- Floating window style.
  float = {
    border  = "rounded",
    source  = true,   -- show LSP source name
    header  = "",
    prefix  = "",
    max_width  = 80,
    max_height = 20,
  },

  -- Signs — must be set here in 0.12 (sign-define no longer works).
  signs = {
    severity = { min = sev.HINT },
    text = {
      [sev.ERROR] = " ",  -- nerd font icons; fall back to ASCII if unavailable
      [sev.WARN]  = " ",
      [sev.INFO]  = " ",
      [sev.HINT]  = "󰌵 ",
    },
    -- Highlight groups for sign-column icons.
    texthl = {
      [sev.ERROR] = "DiagnosticSignError",
      [sev.WARN]  = "DiagnosticSignWarn",
      [sev.INFO]  = "DiagnosticSignInfo",
      [sev.HINT]  = "DiagnosticSignHint",
    },
    numhl = {
      [sev.ERROR] = "DiagnosticError",
    },
  },
})
