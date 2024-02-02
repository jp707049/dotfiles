return {
	"Everblush/nvim",
	priority = 1000,
	lazy = false,
	name = "everblush",
	config = function()
		vim.cmd([[colorscheme everblush]])
	end,
}
