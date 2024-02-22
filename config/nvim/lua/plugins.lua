-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- compile after saving plugins.lua
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use 'neovim/nvim-lspconfig'

  use 'mhinz/vim-startify'

  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
  use 'tpope/vim-endwise'
  use 'tpope/vim-surround'
  use 'mileszs/ack.vim'

  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  use 'tiagovla/scope.nvim'
  use "lukas-reineke/indent-blankline.nvim"

  -- use "~/dev/nvim-test-plugin"

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly'                  -- optional, updated every week. (see issue #1193)
  }

  use 'jose-elias-alvarez/null-ls.nvim'

  use({
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "neovim/nvim-lspconfig",
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    -- after = "nvim-web-devicons", -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup()
    end,
  })

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- use 'hrsh7th/vim-vsnip'
  -- use 'hrsh7th/vim-vsnip-integ'
  use 'gravityblast/snipmate.vim'

  use 'simrat39/symbols-outline.nvim'

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.1', requires = { { 'nvim-lua/plenary.nvim' } } }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use 'navarasu/onedark.nvim'
  use { 'junegunn/fzf', run = 'fzf#install()' }
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  use 'prettier/vim-prettier'
  use 'Certora/vim-setup'
  use 'github/copilot.vim'

  use 'ray-x/go.nvim'
  require('go').setup()

  use 'tomlion/vim-solidity';
end)
