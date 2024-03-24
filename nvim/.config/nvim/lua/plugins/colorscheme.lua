return {
	"catppuccin/nvim",
	priority = 1000,
	lazy = false,
	name = "catppuccin",
	config = function()
		vim.cmd([[colorscheme catppuccin-mocha]])
	end,
}
