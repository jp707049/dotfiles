return {
	"sainnhe/everforest",
  priority = 1000,
  lazy = false,
  config = function()
		vim.g.everforest_background = "hard"
		vim.g.everforest_better_performance = 1
    vim.cmd([[colorscheme everforest]])
  end,
}
