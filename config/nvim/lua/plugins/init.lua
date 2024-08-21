return {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  'neovim/nvim-lspconfig',
  'tpope/vim-fugitive',
  'tpope/vim-commentary',
  'tpope/vim-endwise',
  'tpope/vim-surround',
  'mileszs/ack.vim',
  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  'tiagovla/scope.nvim',
  "lukas-reineke/indent-blankline.nvim",

  -- use "~/dev/nvim-test-plugin"

  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
  },

  'jose-elias-alvarez/null-ls.nvim',

  {
    "utilyre/barbecue.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    -- after = "nvim-web-devicons", -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup()
    end,
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  },

  -- 'hrsh7th/vim-vsnip',
  -- 'hrsh7th/vim-vsnip-integ',
  'gravityblast/snipmate.vim',

  'simrat39/symbols-outline.nvim',
  { 'nvim-telescope/telescope.nvim',            tag = '0.1.7',    dependencies = { { 'nvim-lua/plenary.nvim' } } },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  { 'catppuccin/nvim',                          as = 'catppuccin' },
  'navarasu/onedark.nvim',

  -- can we remove it if we use telescope?
  {
    'junegunn/fzf.vim',
    dependencies = { 'junegunn/fzf', build = ':call fzf#install()' }
  },


  { 'nvim-lualine/lualine.nvim', dependencies = { 'kyazdani42/nvim-web-devicons', opt = true } },
  'prettier/vim-prettier',
  'Certora/vim-setup',
  'github/copilot.vim',

  'tomlion/vim-solidity',
}
