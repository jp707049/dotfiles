-- =============================================================================
-- rust-analyzer  —  Rust
--
-- Install:  :MasonInstall rust-analyzer
-- Docs:     https://rust-analyzer.github.io/manual.html#configuration
--
-- For full rustaceanvim-style experience without the plugin, we configure
-- rust-analyzer directly and hook into cargo check / clippy via settings.
-- =============================================================================

vim.lsp.config["rust_analyzer"] = {
  cmd          = { "rust-analyzer" },
  filetypes    = { "rust" },
  root_markers = { "Cargo.toml", "Cargo.lock", ".git" },
  settings     = {
    ["rust-analyzer"] = {
      -- Run clippy on save instead of just cargo check.
      check = {
        command     = "clippy",
        extraArgs   = { "--all-targets", "--", "-W", "clippy::pedantic" },
      },
      -- Inlay hints — all enabled; toggle per-buffer via <leader>th.
      inlayHints = {
        bindingModeHints          = { enable = true },
        chainingHints             = { enable = true },
        closureCaptureHints       = { enable = true },
        closureReturnTypeHints    = { enable = "with_block" },
        discriminantHints         = { enable = "fieldless" },
        expressionAdjustmentHints = { enable = "reborrow" },
        implicitDrops             = { enable = true },
        lifetimeElisionHints      = { enable = "skip_trivial", useParameterNames = true },
        maxLength                 = 30,
        parameterHints            = { enable = true },
        rangeExclusiveHints       = { enable = true },
        renderColons              = true,
        typeHints                 = { enable = true, hideClosureInitialization = false, hideNamedConstructor = false },
      },
      -- Cargo / proc-macro settings.
      cargo = {
        allFeatures       = true,
        loadOutDirsFromCheck = true,
        runBuildScripts   = true,
      },
      procMacro = {
        enable  = true,
        ignored = {
          ["async-trait"]  = { "async_trait" },
          ["napi-derive"]  = { "napi" },
          ["tokio"]        = { "test" },
        },
      },
      -- Diagnostics: merge rust-analyzer suggestions with cargo errors.
      diagnostics = {
        enable         = true,
        experimental   = { enable = true },
      },
      -- Completion.
      completion = {
        callable        = { snippets = "fill_arguments" },
        postfix         = { enable = true },
        privateEditable = { enable = true },
      },
      -- Semantic highlighting.
      semanticHighlighting = {
        strings = { enable = true },
      },
    },
  },
}
