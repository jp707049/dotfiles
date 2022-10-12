return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- Colorscheme
  use "olimorris/onedarkpro.nvim"

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
end)
