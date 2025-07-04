return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "rust_analyzer", "ts_ls", "gopls", "solidity_ls_nomicfoundation" },
      automatic_enable = false,
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
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

  'nvimtools/none-ls.nvim',

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
  {
    'navarasu/onedark.nvim',

    opts = {
      style = 'warm',
      toggle_style_key = "<Leader>c",
      code_style = {
        -- functions = "bold",
      },
      colors = {
        purple = "#c678dd",
      },

    },
    config = function()
      -- require('onedark').load()
    end
  },

  -- can we remove it if we use telescope?
  {
    'junegunn/fzf.vim',
    dependencies = { 'junegunn/fzf', build = ':call fzf#install()' }
  },


  { 'nvim-lualine/lualine.nvim', dependencies = { 'kyazdani42/nvim-web-devicons', opt = true } },
  'prettier/vim-prettier',
  'gravityblast/certora-vim',
  'github/copilot.vim',

  -- 'tomlion/vim-solidity',

  {
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {
      file_types = { "markdown", "Avante" },
    },
    ft = { "markdown", "Avante" },
  },

  {
    "ziglang/zig",
    ft = "zig"
  }
}
