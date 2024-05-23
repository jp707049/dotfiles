-- return {
-- 	"RRethy/base16-nvim",
-- 	priority = 1000,
-- 	lazy = false,
-- 	config = function()
-- 		vim.cmd([[colorscheme base16-gruvbox-dark-hard]])
-- 	end,
-- }

return {
	"nyoom-engineering/oxocarbon.nvim",
	lazy = false,
	priority = 1000,
	config = function ()
		vim.cmd([[colorscheme oxocarbon]])
	end,
}
