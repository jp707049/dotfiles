return {
  cmd = { 'clangd', '--background-index' },
  root_markers = { '.clangd', '.clang-format', 'compile_commands.json', 'compile_flags.txt' },
  filetypes = { 'c', 'cpp' },
  flags = { debounce_text_changes = 20 },
}
