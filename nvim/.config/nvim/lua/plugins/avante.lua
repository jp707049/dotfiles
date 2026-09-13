vim.api.nvim_create_autocmd("PackChanged", {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == "avante.nvim" and (kind == "install" or kind == "update") then
      vim.system({ "make" }, { cwd = ev.data.path }):wait()
    end
  end,
})

require("render-markdown").setup {
  file_types = { "markdown", "Avante" },
}

require("avante").setup {
  provider = "claude-code",
}
