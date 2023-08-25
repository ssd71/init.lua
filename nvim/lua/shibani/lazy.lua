local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then

  vim.fn.system({

    "git",

    "clone",

    "--filter=blob:none",

    "https://github.com/folke/lazy.nvim.git",

    "--branch=stable", -- latest stable release

    lazypath,

  })

end

vim.opt.rtp:prepend(lazypath)



require("lazy").setup({
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.2",
    -- or                            , branch = "0.1.x",
    dependencies = { { "nvim-lua/plenary.nvim" } }
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },           -- Required
      { "williamboman/mason.nvim" },         -- Optional
      { "williamboman/mason-lspconfig.nvim" }, -- Optional

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },   -- Required
      { "hrsh7th/cmp-nvim-lsp" }, -- Required
      { "L3MON4D3/LuaSnip" },   -- Required
    }
  },

  "mbbill/undotree",

  "tpope/vim-fugitive",

  {

    "windwp/nvim-autopairs",

    config = function() require("nvim-autopairs").setup {} end

  },

  "lukas-reineke/indent-blankline.nvim",

  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end
  },
  -- Find some way to default to spaces instead of tabs
  --"tpope/vim-sleuth",
  {
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
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup()
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end
  },
  { 'rose-pine/neovim', name = 'rose-pine' }
})
