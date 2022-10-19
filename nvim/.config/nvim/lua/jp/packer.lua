return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- Colorscheme
  use "RRethy/nvim-base16"

  -- Statusline
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }

  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"

  -- gitsigns
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Neovim LSP
  use "neovim/nvim-lspconfig"

  -- Autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }
end)
