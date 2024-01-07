return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = true,
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
	},
	config = function()
		local telescope = require("telescope")

		local function formattedName(_, path)
      local tail = vim.fs.basename(path)
      local parent = vim.fs.dirname(path)
      if parent == "." then
        return tail
      end
      return string.format("%s\t\t%s", tail, parent)
    end

		telescope.setup({
			file_ignore_patterns = { "%.git/." },
			defaults = {
				previewer = false,
				file_ignore_patterns = { "package-lock.json" },
				layout_config = {
					prompt_position = "top",
					preview_cutoff = 120,
				},
			},
			pickers = {
				find_files = {
					previewer = false,
					path_display = formattedName,
					layout_config = {
						height = 0.4,
						prompt_position = "top",
						preview_cutoff = 120,
					},
				},
				buffers = {
					path_display = formattedName,
					previewer = false,
					initial_mode = "normal",
					layout_config = {
						height = 0.4,
						width = 0.6,
						prompt_position = "top",
						preview_cutoff = 120,
					},
				},
			},
		})
	end,
}
