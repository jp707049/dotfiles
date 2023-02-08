local lsp = require('lsp-zero')
lsp.preset('recommended')

local cmp = require('cmp')

local cmp_config = lsp.defaults.cmp_config({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'path' },
  },
  window = {
    completion = cmp.config.window.bordered()
  },
})

cmp.setup(cmp_config)
lsp.setup()
