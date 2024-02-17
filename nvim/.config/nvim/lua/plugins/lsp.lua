return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"folke/neodev.nvim",
		"hrsh7th/cmp-nvim-lsp",
		{ "j-hui/fidget.nvim", opts = {} }
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "pyright", "clangd", "gopls" },
		})

		require("lspconfig.ui.windows").default_options.border = "single"

		require("neodev").setup()

		local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

		local mason_lspconfig = require("mason-lspconfig")

		mason_lspconfig.setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({
          capabilities = capabilities,
          on_attach = require("plugins.lsp.on_attach").on_attach,
          settings = require("plugins.lsp.servers")[server_name],
          filetypes = (require("plugins.lsp.servers")[server_name] or {}).filetypes,
        })
      end,
    })

		vim.diagnostic.config({
      title = false,
      underline = true,
      virtual_text = false,
      signs = true,
      update_in_insert = true,
      severity_sort = true,
      float = {
        source = "always",
        style = "minimal",
        border = "rounded",
        header = "",
        prefix = "",
      },
    })

		vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
	end,
}

