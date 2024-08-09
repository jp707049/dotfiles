-- return {
-- 	"sainnhe/everforest",
-- 	priority = 1000,
-- 	lazy = false,
-- 	config = function()
-- 		vim.cmd([[colorscheme everforest]])
-- 	end,
-- }

-- return {
-- 	--"nyoom-engineering/oxocarbon.nvim",
-- 	"scottmckendry/cyberdream.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function ()
-- 		vim.cmd([[colorscheme cyberdream]])
-- 	end,
-- }

return {
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	priority = 1000,
	config = function ()
		vim.cmd([[colorscheme gruvbox]])
	end,
}
