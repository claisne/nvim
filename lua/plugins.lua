return require("packer").startup(
  function()
    use "wbthomason/packer.nvim"

    use {
      "nvim-treesitter/nvim-treesitter",
      config = function()
        require "plugins.treesitter"
      end
    }

    use {
      "L3MON4D3/LuaSnip",
      requires = {"rafamadriz/friendly-snippets"},
      config = function()
        require "plugins.luasnip"
      end
    }

    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-nvim-lsp"
    use "saadparwaiz1/cmp_luasnip"
    use "hrsh7th/cmp-nvim-lsp-signature-help"

    use "onsails/lspkind-nvim"

    use {
      "neovim/nvim-lspconfig",
      config = function()
        require "plugins.lspconfig"
      end
    }

    use "simrat39/rust-tools.nvim"

    use {
      "folke/trouble.nvim"
    }

    use {
      "hrsh7th/nvim-cmp",
      config = function()
        require "plugins.cmp"
      end
    }

    use {
      "mhartington/formatter.nvim",
      config = function()
        require "plugins.formatter"
      end
    }

    use {
      "nvim-telescope/telescope.nvim",
      requires = "nvim-lua/plenary.nvim"
    }

    use {
      "kyazdani42/nvim-tree.lua",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("nvim-tree").setup()
      end
    }

    use {
      "hoob3rt/lualine.nvim",
      requires = {"kyazdani42/nvim-web-devicons"},
      config = function()
        require "plugins.lualine"
      end
    }

    use {
      "lewis6991/gitsigns.nvim",
      requires = {
        "nvim-lua/plenary.nvim"
      },
      config = function()
        require("gitsigns").setup()
      end
    }

    use "mfussenegger/nvim-dap"

    use "preservim/nerdcommenter"

    use {"catppuccin/nvim", as = "catppuccin"}
  end
)
