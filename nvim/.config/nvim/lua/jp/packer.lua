return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- Colorscheme
  use "RRethy/nvim-base16"
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "ellisonleao/gruvbox.nvim" }

  -- Statusline
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }

  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"

  -- gitsigns
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end
  }
  
  -- LSP Zero
  use {
  "VonHeikemen/lsp-zero.nvim",
  requires = {
     -- LSP Support
      {"neovim/nvim-lspconfig"},
      {"williamboman/mason.nvim"},
      {"williamboman/mason-lspconfig.nvim"},

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},
      {"hrsh7th/cmp-buffer"},
      {"hrsh7th/cmp-path"},
      {"saadparwaiz1/cmp_luasnip"},
      {"hrsh7th/cmp-nvim-lsp"},
      {"hrsh7th/cmp-nvim-lua"},

      -- Snippets
      {"L3MON4D3/LuaSnip"},
      {"rafamadriz/friendly-snippets"},
    }
  }
end)
