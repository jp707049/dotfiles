return require("packer").startup(function(use)
  -- Packer can manage itself
  use { "wbthomason/packer.nvim" }
  
  -- Comminuty gruvbox
  use { "gruvbox-community/gruvbox" }

  -- statusline
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }

  -- Treesitter interface
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function() require("nvim-treesitter.install").update({ with_sync = true }) end,
  }

  -- git labels
  use {
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("gitsigns").setup{}
    end
  }

  -- LSP
  use { "neovim/nvim-lspconfig" }

  -- Autocomplete
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "L3MON4D3/LuaSnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-buffer",
      "saadparwaiz1/cmp_luasnip",
    },
  }
end)
