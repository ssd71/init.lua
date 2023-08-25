-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'Mofiqul/dracula.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },           -- Required
      { 'williamboman/mason.nvim' },         -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },   -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },   -- Required
    }
  }

  use 'mbbill/undotree'

  use 'tpope/vim-fugitive'

  use {

    "windwp/nvim-autopairs",

    config = function() require("nvim-autopairs").setup {} end

  }

  use "lukas-reineke/indent-blankline.nvim"

  use {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end }
  -- Find some way to default to spaces instead of tabs
  --use "tpope/vim-sleuth"
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup()
    end
  }
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
end)
