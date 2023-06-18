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
  -- Themes
  { "olimorris/onedarkpro.nvim", priority = 1000 },
  { "catppuccin/nvim",           name = "catppuccin", priority = 1000 },
  { "ellisonleao/gruvbox.nvim",  priority = 1000 },
  { 'Everblush/nvim',            name = 'everblush' },
  "Shatur/neovim-ayu",
  'Mofiqul/dracula.nvim',
  'tiagovla/tokyodark.nvim',

  -- Aparence / Style
  "j-hui/fidget.nvim",
  "folke/todo-comments.nvim",
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
  },
  -- ERROR LUALINE, NO FUNCIONA EN ESTA CONF
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },


  -- Utilities
  "lewis6991/gitsigns.nvim",
  "numToStr/Comment.nvim",
  "norcalli/nvim-colorizer.lua",
  { "folke/which-key.nvim",            event = "VeryLazy" },
  { 'akinsho/bufferline.nvim',         version = "*",      dependencies = 'nvim-tree/nvim-web-devicons' },
  { "phaazon/hop.nvim",                lazy = true },
  { 'goolord/alpha-nvim',              event = "VimEnter", dependencies = { 'nvim-tree/nvim-web-devicons' } },
  { 'akinsho/toggleterm.nvim',         version = "*",      config = true },
  { 'nvim-telescope/telescope.nvim',   tag = '0.1.1',      dependencies = { 'nvim-lua/plenary.nvim' } },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  {
    'nvim-tree/nvim-tree.lua',
    lazy = true,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
  },

  -- Utilities text
  "windwp/nvim-autopairs",
  "rmagatti/alternate-toggler",
  "mg979/vim-visual-multi",
  "gcmt/wildfire.vim",
  "windwp/nvim-ts-autotag",
  "HiPhish/nvim-ts-rainbow2",
  "axelvc/template-string.nvim",
  "lukas-reineke/indent-blankline.nvim",
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },

  -- LSP
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },         -- Required
      { 'hrsh7th/cmp-nvim-lsp' },     -- Required
      { 'hrsh7th/cmp-buffer' },       -- Optional
      { 'hrsh7th/cmp-path' },         -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' },     -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' },             -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    }
  }
})
