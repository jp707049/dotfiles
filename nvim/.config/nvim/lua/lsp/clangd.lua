-- =============================================================================
-- clangd  —  C / C++
--
-- Install:  :MasonInstall clangd
-- Docs:     https://clangd.llvm.org/installation
-- =============================================================================

vim.lsp.config["clangd"] = {
  cmd = {
    "clangd",
    "--background-index",           -- index project in the background
    "--clang-tidy",                  -- enable clang-tidy diagnostics
    "--header-insertion=iwyu",       -- include-what-you-use style
    "--completion-style=detailed",
    "--function-arg-placeholders",   -- fill in argument names on completion
    "--fallback-style=llvm",
    "--offset-encoding=utf-16",      -- avoids clangd/nvim encoding mismatch
  },
  filetypes    = { "c", "cpp", "objc", "objcpp", "cuda" },
  root_markers = {
    { "compile_commands.json", "compile_flags.txt" },
    { ".clangd", ".clang-tidy", ".clang-format" },
    "Makefile",
    ".git",
  },
  capabilities = {
    -- Tell clangd we support offsetEncoding UTF-16 to suppress the warning.
    offsetEncoding = "utf-16",
  },
  -- clangd supports switching between header and source files.
  -- Exposed via a custom command rather than a standard LSP method.
  on_attach = function(_, bufnr)
    vim.keymap.set("n", "<leader>ch",
      "<cmd>ClangdSwitchSourceHeader<CR>",
      { buffer = bufnr, desc = "Switch source/header" })
  end,
}
